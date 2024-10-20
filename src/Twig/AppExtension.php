<?php

namespace App\Twig;

use App\Entity\SonataPagePage;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Sonata\MediaBundle\Provider\Pool;
use Sonata\PageBundle\CmsManager\CmsManagerInterface;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\String\Slugger\AsciiSlugger;
use Symfony\Contracts\Service\Attribute\Required;
use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;
use Twig\TwigFunction;

class AppExtension extends AbstractExtension
{
    private array $sonataPageExcludedBlocks;
    private SerializerInterface $serializer;
    private ManagerRegistry $registry;
    private ParameterBagInterface $parameterBag;
    private $cmsManager;
    private $entityManager;
    private $urlGenerator;
    private $mediaPool;

    #[Required]
    public function autowireDependencies(
        ManagerRegistry $registry,
        ParameterBagInterface $parameterBag,
        SerializerInterface $serializer,
        CmsManagerInterface $cmsManager,
        EntityManagerInterface $entityManager,
        UrlGeneratorInterface $urlGenerator,
        Pool $mediaPool
    ): void {
        $this->registry = $registry;
        $this->parameterBag = $parameterBag;
        $this->serializer = $serializer;
        $this->cmsManager = $cmsManager;
        $this->entityManager = $entityManager;
        $this->urlGenerator = $urlGenerator;
        $this->mediaPool = $mediaPool;
    }

    public function getFunctions(): array
    {
        return [
            new TwigFunction('sonata_page_excluded_blocks', [$this, 'getSonataPageExcludedBlocks']),
            new TwigFunction('unserialize', [$this, 'unserialize']),
            new TwigFunction('app_og_metadatas', [$this, 'appOgMetadatas'], ['is_safe' => ['html']]),
        ];
    }

    public function getFilters(): array
    {
        return [
            new TwigFilter('format_date', [$this, 'formatDate']),
            new TwigFilter('json_decode', [$this, 'jsonDecode']),
            new TwigFilter('slugify', [$this, 'slugify']),
            // new TwigFilter('deserialize', [$this, 'deserialize']),
        ];
    }

    public function getSonataPageExcludedBlocks(): array
    {
        return $this->parameterBag->get('sonata_page_excluded_blocks');
    }

    public function formatDate($date)
    {
        $locale = 'fr_FR';
        $formatter = new \IntlDateFormatter($locale, \IntlDateFormatter::LONG, \IntlDateFormatter::NONE);
        $formattedTime = $date->format('H:i');

        return $formatter->format($date); // .' à ' .$date->format('H:i');
    }

    public function jsonDecode(string $json): array
    {
        return json_decode($json, true);
    }

    public function slugify(string $value): string
    {
        $slugger = new AsciiSlugger();

        return strtolower($slugger->slug($value));
    }

    public function unserialize($data)
    {
        return unserialize($data);
    }

    public function appOgMetadatas(): string
    {
        $html = '';
        $currentPage = $this->cmsManager->getCurrentPage();
        if (is_object($currentPage) && method_exists($currentPage, 'getId')) {
            $currentPageId = $currentPage->getId();
            if (null !== $currentPageId) {
                $repository = $this->entityManager->getRepository(SonataPagePage::class);
                $page = $repository->find($currentPageId);
                if ($page instanceof SonataPagePage) {
                    $ogTitle = htmlspecialchars($page->getOgTitle());
                    $ogDescription = htmlspecialchars($page->getOgDescription());
                    $ogImage = $page->getOgImage();

                    $html = sprintf('<meta property="og:title" content="%s" />'.PHP_EOL, $this->normalize($ogTitle));
                    $html .= sprintf('<meta property="og:description" content="%s" />'.PHP_EOL, $this->normalize($ogDescription));

                    if ($ogImage) {
                        $provider = $this->mediaPool->getProvider($ogImage->getProviderName());
                        $imagePath = $provider->generatePublicUrl($ogImage, $provider->getFormatName($ogImage, 'reference'));
                        $html .= sprintf('<meta property="og:image" content="%s" />'.PHP_EOL, $imagePath);
                    }

                    return $html;
                }
            }
        }

        return $html;
    }

    private function normalize(string $string): string
    {
        return htmlentities(strip_tags($string), \ENT_COMPAT, 'UTF-8');
    }
}

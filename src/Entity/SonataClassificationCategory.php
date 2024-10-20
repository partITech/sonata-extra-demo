<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Partitech\SonataExtra\Contract\MediaInterface;
use Partitech\SonataExtra\Traits\EntityTranslationTrait;
use Sonata\ClassificationBundle\Entity\BaseCategory;
use Doctrine\Common\Collections\Collection;
use Sonata\ClassificationBundle\Model\CategoryInterface;

#[ORM\Entity]
#[ORM\Table(name: 'classification__category')]
#[ORM\HasLifecycleCallbacks]
class SonataClassificationCategory extends BaseCategory
{
    use EntityTranslationTrait;

    private array $baseRouteName=[
        'sonata_extra_blog_category',
        'sonata_extra_blog_search'
    ];

    public function __construct()
    {
        parent::__construct();
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }

    #[ORM\OneToMany(targetEntity: self::class, mappedBy: 'parent', cascade: ['persist', 'remove'])]
    protected Collection $children;

    #[ORM\ManyToOne(targetEntity: self::class, inversedBy: 'children')]
    #[ORM\JoinColumn(name: 'parent_id', referencedColumnName: 'id', onDelete: 'SET NULL')]
    #[ORM\Cascade(['persist', 'remove'])] // valid options : 'persist', 'remove', 'refresh', 'detach'
    protected ?CategoryInterface $parent = null;


    #[ORM\Id]
    #[ORM\Column(type: Types::INTEGER)]
    #[ORM\GeneratedValue]
    protected ?int $id = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    #[ORM\ManyToOne(targetEntity: MediaInterface::class, cascade: ['persist'])]
    #[ORM\JoinColumn(name: 'featured_image__media_id', referencedColumnName: 'id', nullable: true, onDelete: 'SET NULL')]
    private ?MediaInterface $featured_image;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private ?string $seo_title = null;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private ?string $seo_keywords = null;

    #[ORM\Column(type: 'text', nullable: true)]
    private ?string $seo_description = null;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private ?string $seo_og_title = null;

    #[ORM\Column(type: 'text', nullable: true)]
    private ?string $seo_og_description = null;

    #[ORM\ManyToOne(targetEntity: MediaInterface::class, cascade: ['persist'])]
    #[ORM\JoinColumn(name: 'seo_og_image__media_id', referencedColumnName: 'id', nullable: true, onDelete: 'SET NULL')]
    private ?MediaInterface $seo_og_image;

    public function getFeaturedImage(): ?MediaInterface
    {
        return $this->featured_image;
    }

    public function setFeaturedImage(?MediaInterface $featured_image): self
    {
        $this->featured_image = $featured_image;

        return $this;
    }

    public function getSeoTitle(): ?string
    {
        return $this->seo_title;
    }

    public function setSeoTitle(?string $seo_title): self
    {
        $this->seo_title = $seo_title;

        return $this;
    }

    public function getSeoKeywords(): ?string
    {
        return $this->seo_keywords;
    }

    public function setSeoKeywords(?string $seo_keywords): self
    {
        $this->seo_keywords = $seo_keywords;

        return $this;
    }

    public function getSeoDescription(): ?string
    {
        return $this->seo_description;
    }

    public function setSeoDescription(?string $seo_description): self
    {
        $this->seo_description = $seo_description;

        return $this;
    }

    public function getSeoOgTitle(): ?string
    {
        return $this->seo_og_title;
    }

    public function setSeoOgTitle(?string $seo_og_title): self
    {
        $this->seo_og_title = $seo_og_title;

        return $this;
    }

    public function getSeoOgDescription(): ?string
    {
        return $this->seo_og_description;
    }

    public function setSeoOgDescription(?string $seo_og_description): self
    {
        $this->seo_og_description = $seo_og_description;

        return $this;
    }

    public function getSeoOgImage():?MediaInterface
    {
        return $this->seo_og_image;
    }

    public function setSeoOgImage(?MediaInterface $seo_og_image): self
    {
        $this->seo_og_image = $seo_og_image;

        return $this;
    }

}

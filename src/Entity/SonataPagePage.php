<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Partitech\SonataExtra\Entity\Traits\SonataExtraPagePageTrait;
use Sonata\PageBundle\Entity\BasePage;
use Sonata\PageBundle\Model\PageInterface;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity]
#[ORM\Table(name: 'page__page')]
class SonataPagePage extends BasePage
{
    use SonataExtraPagePageTrait;

    private array $baseRouteName=[
        'sonata_extra_blog_search'
    ];

    #[ORM\Id]
    #[ORM\Column(type: Types::INTEGER)]
    #[ORM\GeneratedValue]
    protected $id;

    public function __construct()
    {
        parent::__construct();
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }

    #[Assert\DisableAutoMapping]
    protected ?PageInterface $parent = null;

    #[Assert\DisableAutoMapping]
    protected ?array $parents = null;

    public function setParent(?PageInterface $parent = null): void
    {
        $this->parent = $parent;
    }

    public function setParents(?array $parents = null): void
    {
        $this->parents = $parents;
    }
}

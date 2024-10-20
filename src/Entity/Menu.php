<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Partitech\SonataExtra\Traits\EntityTranslationTrait;
use Partitech\SonataMenu\Model\Menu as BaseMenu;

#[ORM\Table(name: 'sonata_extra__menu')]
#[ORM\Entity(repositoryClass: "Partitech\SonataMenu\Repository\MenuRepository")]
class Menu extends BaseMenu
{
    use EntityTranslationTrait;
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setId(int $id): self
    {
        $this->id = $id;

        return $this;
    }

    public function __construct()
    {
        parent::__construct();
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }
}

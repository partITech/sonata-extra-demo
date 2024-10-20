<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Partitech\SonataMenu\Model\MenuItem as BaseMenuItem;

#[ORM\Table(name: 'sonata_extra__menu_item')]
#[ORM\Entity(repositoryClass: "Partitech\SonataMenu\Repository\MenuItemRepository")]
class MenuItem extends BaseMenuItem
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private ?int $id;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setId($id): self
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

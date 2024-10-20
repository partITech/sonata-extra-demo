<?php

declare(strict_types=1);

namespace App\Entity;

use App\Repository\SonataClassificationCollectionRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Sonata\ClassificationBundle\Entity\BaseCollection;

#[ORM\Entity(repositoryClass: SonataClassificationCollectionRepository::class)]
#[ORM\Table(name: 'classification__collection')]
class SonataClassificationCollection extends BaseCollection
{
    #[ORM\Id]
    #[ORM\Column(type: Types::INTEGER)]
    #[ORM\GeneratedValue]
    protected ?int $id = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }
}

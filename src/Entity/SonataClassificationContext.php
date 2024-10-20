<?php

declare(strict_types=1);

namespace App\Entity;

use App\Repository\SonataClassificationContextRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Sonata\ClassificationBundle\Entity\BaseContext;

#[ORM\Entity(repositoryClass: SonataClassificationContextRepository::class)]
#[ORM\Table(name: 'classification__context')]
class SonataClassificationContext extends BaseContext
{
    #[ORM\Id]
    #[ORM\Column(type: Types::STRING)]
    protected ?string $id = null;

    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }
}

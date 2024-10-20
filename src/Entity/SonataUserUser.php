<?php
namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Sonata\UserBundle\Entity\BaseUser3;

#[ORM\Entity]
#[ORM\Table(name: 'user__user')]
class SonataUserUser extends BaseUser3
{
    #[ORM\Id]
    #[ORM\Column(type: Types::INTEGER)]
    #[ORM\GeneratedValue]
    protected $id;

    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }

    public function setPlainPassword(?string $password): void
    {
        parent::setPassword($password);
        parent::setPlainPassword($password);
        if(empty(parent::getId())){
            parent::setCreatedAt(new \DateTime());
        }
    }
}


<?php

namespace App\Repository;

use App\Entity\MenuItem;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class MenuItemRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MenuItem::class);
    }

    public function updatePositionById($id, $position): void
    {
        $qb = $this->createQueryBuilder('mi')
            ->update()
            ->set('mi.position', ':position')
            ->where('mi.id = :id')
            ->setParameter('position', $position)
            ->setParameter('id', $id);

        $qb->getQuery()->execute();
    }
}

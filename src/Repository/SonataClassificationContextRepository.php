<?php

namespace App\Repository;

use App\Entity\SonataClassificationContext;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class SonataClassificationContextRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SonataClassificationContext::class);
    }

    public function first()
    {
        return $this->createQueryBuilder('e')
                    ->orderBy('e.id', 'ASC')
                    ->setMaxResults(1)
                    ->getQuery()
                    ->getOneOrNullResult();
    }
}

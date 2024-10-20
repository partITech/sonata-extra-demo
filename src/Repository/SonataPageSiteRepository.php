<?php

namespace App\Repository;

use App\Entity\SonataPageSite;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<SonataPageSite>
 *
 * @method SonataPageSite|null find($id, $lockMode = null, $lockVersion = null)
 * @method SonataPageSite|null findOneBy(array $criteria, array $orderBy = null)
 * @method SonataPageSite[]    findAll()
 * @method SonataPageSite[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SonataPageSiteRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SonataPageSite::class);
    }

    //    /**
    //     * @return SimpleTest[] Returns an array of SimpleTest objects
    //     */
    //    public function findByExampleField($value): array
    //    {
    //        return $this->createQueryBuilder('s')
    //            ->andWhere('s.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->orderBy('s.id', 'ASC')
    //            ->setMaxResults(10)
    //            ->getQuery()
    //            ->getResult()
    //        ;
    //    }

    //    public function findOneBySomeField($value): ?SimpleTest
    //    {
    //        return $this->createQueryBuilder('s')
    //            ->andWhere('s.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->getQuery()
    //            ->getOneOrNullResult()
    //        ;
    //    }
}

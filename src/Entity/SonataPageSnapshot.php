<?php

declare(strict_types=1);

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Sonata\PageBundle\Entity\BaseSnapshot;

#[ORM\Entity]
#[ORM\Table(
    name: 'page__snapshot',
    indexes: [
        new ORM\Index(
            name: 'idx_snapshot_dates_enabled',
            columns: ['publication_date_start', 'publication_date_end', 'enabled']
        ),
    ]
)]
class SonataPageSnapshot extends BaseSnapshot
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    protected $id;

    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }
}

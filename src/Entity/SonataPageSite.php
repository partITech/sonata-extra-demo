<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Partitech\SonataExtra\Service\LocaleService;
use Sonata\PageBundle\Entity\BaseSite;

#[ORM\Entity]
#[ORM\Table(name: 'page__site')]
class SonataPageSite extends BaseSite
{
    #[ORM\Id]
    #[ORM\Column(type: Types::INTEGER)]
    #[ORM\GeneratedValue]
    protected $id;
    private bool $isCms=false;
    public function setId($id): self
    {
        $this->id = $id;

        return $this;
    }

    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }

    public function getDefault(): bool
    {
        return $this->isDefault;
    }

    public function setDefault(bool $default): self
    {
        $this->isDefault = $default;

        return $this;
    }

    public function getIsCms(): bool
    {
        return $this->isCms;
    }

    public function setIsCms(bool $isCms): self
    {
        $this->isCms = $isCms;

        return $this;
    }

    public function getLocalShort(): ?string
    {
        return LocaleService::getCodeByLocal($this->getLocale());
    }

    public function getDefinition(): ?array
    {
        return [
            'lang' => $this->getLocalShort(),
            'label' => $this->getName(),
            'site' => $this->getId(),
        ];
    }
}

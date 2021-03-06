<?php

namespace tayara\AnnonceBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Model
 *
 * @ORM\Table(name="model")
 * @ORM\Entity(repositoryClass="tayara\AnnonceBundle\Repository\ModelRepository")
 */
class Model
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=255)
     */
    private $nom;
 /**
     * @ORM\ManyToOne(targetEntity="tayara\AnnonceBundle\Entity\Marque")
     * @ORM\JoinColumn(nullable=true, onDelete = "CASCADE")
     * 
     */
    private $marque;
    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Model
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }
  
    

    /**
     * Set marque
     *
     * @param \tayara\AnnonceBundle\Entity\Marque $marque
     *
     * @return Model
     */
    public function setMarque(\tayara\AnnonceBundle\Entity\Marque $marque = null)
    {
        $this->marque = $marque;

        return $this;
    }

    /**
     * Get marque
     *
     * @return \tayara\AnnonceBundle\Entity\Marque
     */
    public function getMarque()
    {
        return $this->marque;
    }
}

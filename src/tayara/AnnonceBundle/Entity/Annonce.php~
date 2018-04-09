<?php

namespace tayara\AnnonceBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Annonce
 *
 * @ORM\Table(name="annonce")
 * @ORM\Entity(repositoryClass="tayara\AnnonceBundle\Repository\AnnonceRepository")
 */
class Annonce
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
     * @ORM\Column(name="Region", type="string", length=255)
     */
    private $region;

    /**
     * @var string
     *
     * @ORM\Column(name="Ville", type="string", length=255)
     */
    private $ville;

    /**
     * @var string
     *
     * @ORM\Column(name="Titre", type="string", length=255)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="Description", type="string", length=255)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="Prix", type="string", length=255)
     */
    private $prix;
    
    /**
     * @ORM\Column(type="string")
     *
     * @Assert\NotBlank(message="Ajouter une image jpg")
     * @Assert\File(mimeTypes={ "image/jpeg" })
     */
    private $image;
 /**
     * @ORM\ManyToOne(targetEntity="tayara\AnnonceBundle\Entity\Categorie")
     * @ORM\JoinColumn(nullable=true, onDelete = "CASCADE")
     * 
     */
    
    private $categorie;
    /**
     * @ORM\ManyToOne(targetEntity="tayara\UserBundle\Entity\User")
     * @ORM\JoinColumn(nullable=true, onDelete = "CASCADE")
     */
    private $user;
 
   /**
     * @var datetime
     *
     * @ORM\Column(name="Date", type="datetime")
     */
    private $date;
 /**
     * @ORM\ManyToOne(targetEntity="tayara\AnnonceBundle\Entity\Marque")
     * @ORM\JoinColumn(nullable=true, onDelete = "CASCADE")
     * 
     */
    private $marque;
    
     /**
     * @var string
     *
     * @ORM\Column(name="Model", type="string", length=255)
     */
    
    private $model;
     /**
     * @var string
     *
     * @ORM\Column(name="Kelometrage", type="integer", nullable=true)
     */
    private $kelometrage;
     /**
     * @var string
     *
     * @ORM\Column(name="Anne", type="integer", nullable=true)
     */
    private $anne ;
     
    /**
     * @var string
     *
     * @ORM\Column(name="Chambre", type="integer", nullable=true)
     */
    private $chambre;
    
    /**
     * @var string
     *
     * @ORM\Column(name="Superficie", type="integer", nullable=true)
     */
    private $superficie ;
    /**
     * @var string
     *
     * @ORM\Column(name="Transaction", type="integer", nullable=true)
     */
    
     /**
     * @var string
     *
     * @ORM\Column(name="Transaction", type="integer", nullable=true)
     */
    private $transaction ;
      /**
     * @var string
     *
     * @ORM\Column(name="Valide", type="integer", nullable=true)
     */
    private $valide ;
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
     * Set region
     *
     * @param string $region
     *
     * @return Annonce
     */
    public function setRegion($region)
    {
        $this->region = $region;

        return $this;
    }

    /**
     * Get region
     *
     * @return string
     */
    public function getRegion()
    {
        return $this->region;
    }

    /**
     * Set ville
     *
     * @param string $ville
     *
     * @return Annonce
     */
    public function setVille($ville)
    {
        $this->ville = $ville;

        return $this;
    }

    /**
     * Get ville
     *
     * @return string
     */
    public function getVille()
    {
        return $this->ville;
    }

    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Annonce
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Annonce
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set prix
     *
     * @param string $prix
     *
     * @return Annonce
     */
    public function setPrix($prix)
    {
        $this->prix = $prix;

        return $this;
    }

    /**
     * Get prix
     *
     * @return string
     */
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * Set image
     *
     * @param string $image
     *
     * @return Annonce
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get image
     *
     * @return string
     */
    public function getImage()
    {
        return $this->image;
    }


    /**
     * Set categorie
     *
     * @param \tayara\AnnonceBundle\Entity\Categorie $categorie
     *
     * @return Annonce
     */
    public function setCategorie(\tayara\AnnonceBundle\Entity\Categorie $categorie = null)
    {
        $this->categorie = $categorie;

        return $this;
    }

    /**
     * Get categorie
     *
     * @return \tayara\AnnonceBundle\Entity\Categorie
     */
    public function getCategorie()
    {
        return $this->categorie;
    }

    /**
     * Set user
     *
     * @param \tayara\UserBundle\Entity\User $user
     *
     * @return Annonce
     */
    public function setUser(\tayara\UserBundle\Entity\User $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \tayara\UserBundle\Entity\User
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * Set date
     *
     * @param \DateTime $date
     *
     * @return Annonce
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Set marque
     *
     * @param string $marque
     *
     * @return Annonce
     */
    public function setMarque($marque)
    {
        $this->marque = $marque;

        return $this;
    }

    /**
     * Get marque
     *
     * @return string
     */
    public function getMarque()
    {
        return $this->marque;
    }

    /**
     * Set kelometrage
     *
     * @param integer $kelometrage
     *
     * @return Annonce
     */
    public function setKelometrage($kelometrage)
    {
        $this->kelometrage = $kelometrage;

        return $this;
    }

    /**
     * Get kelometrage
     *
     * @return integer
     */
    public function getKelometrage()
    {
        return $this->kelometrage;
    }

    /**
     * Set anne
     *
     * @param integer $anne
     *
     * @return Annonce
     */
    public function setAnne($anne)
    {
        $this->anne = $anne;

        return $this;
    }

    /**
     * Get anne
     *
     * @return integer
     */
    public function getAnne()
    {
        return $this->anne;
    }

    /**
     * Set chambre
     *
     * @param integer $chambre
     *
     * @return Annonce
     */
    public function setChambre($chambre)
    {
        $this->chambre = $chambre;

        return $this;
    }

    /**
     * Get chambre
     *
     * @return integer
     */
    public function getChambre()
    {
        return $this->chambre;
    }

    /**
     * Set superficie
     *
     * @param integer $superficie
     *
     * @return Annonce
     */
    public function setSuperficie($superficie)
    {
        $this->superficie = $superficie;

        return $this;
    }

    /**
     * Get superficie
     *
     * @return integer
     */
    public function getSuperficie()
    {
        return $this->superficie;
    }

    /**
     * Set transaction
     *
     * @param integer $transaction
     *
     * @return Annonce
     */
    public function setTransaction($transaction)
    {
        $this->transaction = $transaction;

        return $this;
    }

    /**
     * Get transaction
     *
     * @return integer
     */
    public function getTransaction()
    {
        return $this->transaction;
    }

    /**
     * Set valide
     *
     * @param integer $valide
     *
     * @return Annonce
     */
    public function setValide($valide)
    {
        $this->valide = $valide;

        return $this;
    }

    /**
     * Get valide
     *
     * @return integer
     */
    public function getValide()
    {
        return $this->valide;
    }

    /**
     * Set model
     *
     * @param \tayara\AnnonceBundle\Entity\Model $model
     *
     * @return Annonce
     */
    public function setModel(\tayara\AnnonceBundle\Entity\Model $model = null)
    {
        $this->model = $model;

        return $this;
    }

    /**
     * Get model
     *
     * @return \tayara\AnnonceBundle\Entity\Model
     */
    public function getModel()
    {
        return $this->model;
    }
}

<?php

namespace tayara\UserBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * User
 *
 * @ORM\Table(name="app_user")
 * @ORM\Entity(repositoryClass="tayara\UserBundle\Repository\UserRepository")
 */
class User extends BaseUser {


    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;


     /**
     * Get id
     *
     * @return int
     */
    public function getId() {
        return $this->id;
    }


   public function __toString()
    {
 return (string)$this->getId();
    }
}

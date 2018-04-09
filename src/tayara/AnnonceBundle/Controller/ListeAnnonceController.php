<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace tayara\AnnonceBundle\Controller;

use tayara\AnnonceBundle\Entity\Annonce;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Annonce controller.
 *
 * @Route("listannonce")
 */
class ListeAnnonceController extends Controller {

    /**
     * Lists all annonce entities.
     *
     * @Route("/", name="listannonce_index")
     * @Method("GET")
     */
    public function indexAction() {

        $em = $this->getDoctrine()->getManager();
        $annonces = $em->getRepository('tayaraAnnonceBundle:Annonce')->
                findBy(array("valide" => "2"), array('date' => 'desc'));

        //calculer nombre des anonces
        $nbAnnonce = $em->getRepository('tayaraAnnonceBundle:Annonce')->nbAnoonce();

        //calculer nombre des annonces vehicule
        $nbV = $em->getRepository('tayaraAnnonceBundle:Annonce')->nbVehicule();

        //calculer nombre des annonces immobilier
        $nbIm = $em->getRepository('tayaraAnnonceBundle:Annonce')->nbImmobilier();

        return $this->render('annonce/listAnnonce.html.twig', array(
                    'annonces' => $annonces, 'stat' => $nbAnnonce, 'nbv' => $nbV, 'nbIm' => $nbIm,
        ));
    }

    /**
     * Lists all annonce entities.
     *
     * @Route("/vehicule", name="listVehicule_index")
     * @Method("GET")
     */
    public function indexVehiculeAction() {

        $em = $this->getDoctrine()->getManager();
        $annonces = $em->getRepository('tayaraAnnonceBundle:Annonce')->findBy(array('categorie' => '1'), array('date' => 'desc'));
        return $this->render('annonce/listVehicule.html.twig', array(
                    'annonces' => $annonces,
        ));
    }

    /**
     * Lists all annonce entities.
     *
     * @Route("/immobilier", name="listimmobilier_index")
     * @Method("GET")
     */
    public function indexImmobilierAction() {

        $em = $this->getDoctrine()->getManager();
        $annonces = $em->getRepository('tayaraAnnonceBundle:Annonce')->findBy(array('categorie' => '2'), array('date' => 'desc'));
        return $this->render('annonce/listImmobilier.html.twig', array(
                    'annonces' => $annonces,
        ));
    }

    /**
     * Finds and displays a annonce entity.
     *
     * @Route("/{id}", name="listannonce_show")
     * @Method("GET")
     */
    public function showAction(Annonce $annonce) {

        return $this->render('annonce/listAnnonceshow.html.twig', array(
                    'annonce' => $annonce,
        ));
    }

}

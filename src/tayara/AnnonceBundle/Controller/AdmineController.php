<?php

namespace tayara\AnnonceBundle\Controller;

use tayara\AnnonceBundle\Entity\Annonce;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\HttpFoundation\Request;

/**
 * Annonce controller.
 *
 * @Route("admine")
 */
class AdmineController extends Controller {

    /**
     * Lists all annonce entities.
     *
     * @Route("/", name="admine_index")
     * @Method("GET")
     */
    public function indexAdmineAction() {

        $em = $this->getDoctrine()->getManager();
        $annonces = $em->getRepository('tayaraAnnonceBundle:Annonce')->findBy(array("valide" => "1"), array('date' => 'desc'));

        return $this->render('admine/index.html.twig', array(
                    'annonces' => $annonces
        ));
    }

    /**
     * Displays a form to edit an existing annonce entity.
     *
     * @Route("/{id}/edit", name="admine_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Annonce $annonce) {
       
            $annonce->setValide("2");
         

            $em = $this->getDoctrine()->getManager();
            $em->persist($annonce);
            $em->flush();

            return $this->redirectToRoute('admine_index');
      
    }

}

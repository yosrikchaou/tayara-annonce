<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace tayara\AnnonceBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

/**
 * Model controller.
 *
 * @Route("modelajx")
 */
class ModelAjxController extends Controller {

    /**
     * 
     *
     * @Route("/{id}", name="modelajx",
     * options = { "expose" = true },
     * name = "modelajx",
     * )
     * @Method({"GET", "POST"})
     */
    public function modelAction(Request $Request, $id) {
        if ($Request->isXmlHttpRequest()) {
            $em = $this->getDoctrine()->getManager();

            $model = $em->getRepository('tayaraAnnonceBundle:Model')->findBy(array('marque' => $id));
            if ($model) {
                $model1 = array();
                foreach ($model as $value) {
                    $model1[] = $value->getNom();
                }
            } else {
                $model1 = null;
            }
            $response = new JsonResponse();
            return $response->setData(array('model' => $model1));
        }
    }

}

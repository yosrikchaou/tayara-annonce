<?php

namespace tayara\AnnonceBundle\Form;

use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;


class AnnonceType extends AbstractType {

    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options) {
           $builder->add('categorie')->add('region')
                ->add('ville')->add('titre')
                ->add('description', TextareaType::class)
                ->add('prix')
                ->add('image', FileType::class, array('label' => 'Image(JPG)'))
                ->add('marque')->add('model',ChoiceType::class)
                ->add('kelometrage', ChoiceType::class, array(
                    'choices' => array(
                        '0-9999' => '1',
                        '10000-59999' => '2',
                        '60000-99999' => '3',
                        '100000-119999' => '4',
                        '120000-149999' => '5',
                        '150000-200000' => '6',
                        'plus 200000' => '7'
            )))
                ->add('anne')->add('transaction', ChoiceType::class, array(
                    'choices' => array(
                        'A louer' => '1',
                        'A vendre' => '2'
                        )))->add('chambre')->add('superficie');
        $modelV= function (FormInterface $form, $id,$em)
        {

        $model = $em->getRepository('tayaraAnnonceBundle:Model')->findBy(array('marque' => $id));
     
            if ($model) {
                $model1 = array();
                foreach ($model as $value) {
                    $model1[(string)$value->getNom()] = $value->getNom();
                }
            } else {
                $model1 = null;
            }
           
           $form->add('model',ChoiceType::class, array(
                    'choices' => $model1));

        };
         
        $builder->get('marque')->addEventListener(FormEvents::POST_SUBMIT, function(FormEvent $event) use ($modelV) {
            $modelV($event->getForm()->getParent(),$event->getForm()->getData(),$event->getForm()->getConfig()->getOptions()['em']);
        });
        
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver) {
        $resolver->setDefaults(array(
            'em' => null
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix() {
        return '';
    }
 
 
   

}

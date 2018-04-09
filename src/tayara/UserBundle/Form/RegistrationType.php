<?php

// src/AppBundle/Form/RegistrationType.php

namespace tayara\UserBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class RegistrationType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->add('roles', CollectionType::class, array(
                    'entry_type' => ChoiceType::class,
                    'entry_options' => array(
                        'choices' => array(
                            
                            'utilisateur' => 'ROLE_UTILISATEUR'
                        ),
                    ),
                ))
        ;
    }

    public function getParent() {
        return 'FOS\UserBundle\Form\Type\RegistrationFormType';
    }

    public function getBlockPrefix() {
        return 'app_user_registration';
    }

    // For Symfony 2.x
    public function getName() {
        return $this->getBlockPrefix();
    }

}

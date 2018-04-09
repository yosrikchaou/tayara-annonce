<?php

namespace tayara\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class tayaraUserBundle extends Bundle
{
	
	public function getParent()
  {
    return 'FOSUserBundle';
  }

}

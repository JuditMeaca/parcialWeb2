<?php

require_once 'libs/smarty/Smarty.class.php';


class PublicView{
  
    private $smarty;

    public function __construct(){
        $this->smarty = new Smarty();

    }

    public function viewHome(){
        $this->smarty->display('home.tpl');
    }

    public function viewPets($pets){
        $this->smarty->assign('pets', $pets);
        $this->smarty->display('listpets.tpl');

    }

}   
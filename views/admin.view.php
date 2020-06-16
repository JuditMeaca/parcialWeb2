<?php

require_once 'libs/smarty/Smarty.class.php';


class AdminView{
  
    private $smarty;

    public function __construct(){
        $this->smarty = new Smarty();

    }

    public function viewFormAdd($ciudades, $error = null){
        $this->smarty->assign('ciudades', $ciudades);
        $this->smarty->assign('error', $error);
        $this->smarty->display('formadd.tpl');
    }
}    
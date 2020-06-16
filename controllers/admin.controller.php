<?php

require_once 'views/admin.view.php';
require_once 'models/admin.model.php';


class AdminController{

    private $model;
    private $view;

    public function __construct(){

        $this->view = new AdminView;
        $this->model = new AdminModel;       
    }

    public function newPet(){
        $ciudades=$this->model->getAll();
        $this->view->viewFormAdd($ciudades);
    }

    public function addPet(){
        $nombre = $_POST['name'];
        $edad = $_POST['age'];
        $estado = $_POST['condition'];
        $ciudad = $_POST['city'];
         
        //var_dump($nombre, $edad, $estado, $ciudad);
        if (!empty($nombre) && !empty($edad) && !empty ($estado) && !empty ($ciudad)){
            $this->model->insertPet($nombre, $edad, $estado, $ciudad);
         header('Location: ' . BASE_URL . "list");

        }
        else{
            $this->view->viewFormAdd('Complete todos los campos');
        }
        
    }
}
        
<?php

    require_once 'controllers/public.controller.php';
    require_once 'controllers/admin.controller.php';

   
    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');


    if (empty($_GET['action'])) {
        $_GET['action'] = 'home';
    } 

   
    $accion = $_GET['action']; 
    $parametros = explode('/', $accion);

    // TABLA DE RUTEO
    switch ($parametros[0]) {
        case 'home': 
            $controller = new PublicController();
            $controller->showHome();
        break;
        case 'list': 
            $controller = new PublicController();
            $controller->showLatestPets();
        break;
        case 'new': 
            $controller = new AdminController();
            $controller -> newPet();
        break;
        case 'add': 
            $controller = new AdminController();
            $controller -> addPet();
        break;
        default:  
            echo "404";
        break;   
    }
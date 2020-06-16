<?php

class PublicModel{
    
    private function createConection(){
        $host='localhost';
        $userName='root';
        $password='';
        $database= 'db_huellas';

        try{
            $pdo= new PDO ("mysql:host=$host;dbname=$database;charset=utf8", $userName,$password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);    
        }
        catch (Exception $e){
            var_dump($e);
        }
        return $pdo;
    }
    
    public function getLatestPets(){
        $db=$this->createConection();

        $sentencia= $db->prepare("SELECT * FROM mascota, ciudad WHERE mascota.id_ciudad_fk = ciudad.id_ciudad ORDER BY id_mascota DESC LIMIT 3" );
        $sentencia->execute();
        $pets=$sentencia->fetchAll(PDO::FETCH_OBJ);

        return $pets;
    }
}
<?php 

class AdminModel{

    private function createConection() {
        $host = 'localhost'; // localhost
        $userName = 'root'; // casi siempre es root
        $password = ''; // puede ser vacio
        $database = 'db_huellas'; // nombre de la base de datos

        try {
            $pdo = new PDO("mysql:host=$host;dbname=$database;charset=utf8", $userName, $password);
            
            // solo en modo desarrollo
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
        } catch (Exception $e) {
            var_dump($e);
        }
        return $pdo;
    }

    public function getAll(){
        $db = $this->createConection();
        
           
        $sentencia = $db->prepare("SELECT * FROM ciudad"); 
        $sentencia->execute();
        $ciudad = $sentencia->fetchAll(PDO::FETCH_OBJ); 
        
        return $ciudad;
    }
    
    public function insertPet($nombre, $edad, $estado, $ciudad){
        $db = $this->createConection();
    
        $sentencia = $db->prepare("INSERT INTO mascota(nombre, edad, estado, id_ciudad_fk) VALUES (?, ?, ?, ?)");
        $sentencia->execute([$nombre, $edad, $estado, $ciudad]);
    }
}

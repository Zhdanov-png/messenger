<?php 

class Mess
{
    private $pdo;    
    
    function __construct() {
        include "pdo.php";
        $this->pdo = new PDO($dsn, $user, $pass, $opt);
    }
    
    public function Select()
    {
        $stmt = $pdo->query("SELECT `from`, `to`, `text` FROM messenges");
        while ($row = $stmt->fetch())
        {
            echo $row['from'] ." ". $row['to'] ." ".$row['text'] ."\n";
        }

    }
    
   public function setSend()
    {
        
    } 
    
    public function getSend()
    {
        
    }
    
}
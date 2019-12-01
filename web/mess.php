<?php 

class Mess
{
    private $pdo;    
    
    function __construct() {
        include "pdo.php";
        $this->pdo = new PDO($dsn, $user, $pass, $opt);
    }
    
    public function Select($sender='')
    {
        $qq="SELECT `from`, `to`, `datetime`, `text` FROM messenges ;";
       // echo $qq;
        $stmt = $this->pdo->query($qq);
        
        while ($row = $stmt->fetch())
        {
            echo $row['from'] ." ". $row['to'] ." ". $row['datetime'] ." "."\n".$row['text'] ."\n";
        }

    }
    
   public function setSend($from,$to,$datetime,$text,$status)
    {
        $sql = "INSERT INTO messenges (`from`, `to`, `datetime`, `text`,`status`) VALUES (:from, :to, :datetime, :text, :status);";   
        $stm = $this->pdo->prepare($sql);
        $stm->execute(array( ':from'=>$from, ':to'=>$to, ':datetime'=>$datetime, ':text'=>$text, ':status'=>$status ));
    } 
    
    public function getSend()
    {
        
    }
    
}
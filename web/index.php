<?php

include "pdo.php";

//echo "test pdo1";

$stmt = $pdo->query("SELECT `from`, `to`, `text` FROM messenges");
while ($row = $stmt->fetch())
{
    echo $row['from'] ." ". $row['to'] ." ".$row['text'] ."\n";
}

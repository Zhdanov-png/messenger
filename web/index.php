<?php


include 'mess.php';

$mess= new Mess();
//echo "test pdo1";

?>


<div class="row">
    <pre>
       <?php 
           if (isset($_POST["_from"]))
               echo "test_".$_POST['_from'];
        ?>
    </pre>
</div>
<div class="row">
    <form action="index.php" method="post" name="formpost">
        <label>Отпр:</label>
        <input type="text" name="_from" placeholder="Отправитель">
         <label>Пол:</label>
        <input type="text" name="_to" placeholder="Получатель"><br>
         <textarea name="_text" cols="60" rows="10">
             
         </textarea><br>
         <button type="submit" name="sub">
             Отправить
         </button>
    </form>
</div>
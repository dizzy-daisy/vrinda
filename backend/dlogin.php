<?php
include "conn.php";
if($_SERVER["REQUEST_METHOD"]=="POST"){
    $name=$_POST['name'];
    $pass=$_POST['password'];
    $sql="SELECT  PASSWORD FROM driver  WHERE NAME='$name'";
    $result=$conn->query($sql);
    if($result->num_rows===1){
        $row=$result->fetch_assoc();
        if($pass===$row['PASSWORD']){
            $_SESSION['name'] =$name;
            $_SESSION['loggedin']=true;
            header("Location: /pt/driver.html");
            exit();      
        }else{
            echo "pass wrong";
        }
    }else{
        echo "name not found";
    }
}
?>
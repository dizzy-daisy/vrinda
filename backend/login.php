<?php
include "conn.php";
if($_SERVER["REQUEST_METHOD"]=="POST"){
    $email=$_POST['email'];
    $pass=$_POST['password'];
    $sql="SELECT password FROM student  WHERE email='$email'";
    $result=$conn->query($sql);
    if($result->num_rows===1){
        $row=$result->fetch_assoc();
        if($pass===$row['password']){
            $_SESSION['email'] =$email;
            $_SESSION['loggedin']=true;
            header("Location: /pt/index.html");
            exit();      
        }else{
            echo "pass wrong";
        }
    }else{
        echo "email not found";
    }
}
?>
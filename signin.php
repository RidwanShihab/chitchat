<?php
session_start();
include 'config.php';
//Variables using $ sign
$uname = $_POST['username'];
$pass = $_POST['password'];
    


    //Creating connection
    if (mysqli_connect_error()) {
        die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
        //error check
    } 
    else {

        $sql = "select * from users where Username='$uname'";
        //insert values in DB
        $result = $conn->query($sql);
        echo "0ne";

    if ($result->num_rows > 0) {
        echo "tw0";
  // output data of each row
     while($row = $result->fetch_assoc()) {
        if($row['Password']==$pass){
            $_SESSION["myid"] = $row;
            header ("location: homepage.php");
        }
  }
}  else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


    }

?>
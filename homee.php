<?php
session_start();
include 'config.php';
//Variables using $ sign
$status = $_POST['post_status'];
$details =$_SESSION["myid"];
$nam= $details['Username'];
    


    //Creating connection
    if (mysqli_connect_error()) {
        die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
        //error check
    } 
    else {

        $Insert = "insert into status (status, fname) values('$status','$nam')";

        //insert values in DB

        if ($conn->query($Insert) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
        header ("location: homepage.php");
        $conn->close();

    }

?>
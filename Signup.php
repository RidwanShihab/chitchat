<?php
session_start();
include 'config.php';

//Variables using $ sign
$email = $_POST['Email'];
$username = $_POST['Username'];
$password = $_POST['Password'];

   
    //Creating connection
    if (mysqli_connect_error()) {
        die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
        //error check
    } 
    else {

        $Insert = "insert into users ( Email, Username, Password) values( '$email', '$username', '$password')";
        $id = "select * from users where email='$email'";
        //insert values in DB

        if ($conn->query($Insert) === TRUE) {
            $result = $conn->query($id);
            while($row = $result->fetch_assoc()) {
                $_SESSION["myid"] = $row;
            }
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
        header ("location: homepage.php");
        $conn->close();

    }

?>
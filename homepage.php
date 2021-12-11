<?php
session_start();
include 'config.php';
//Variables using $ sign 
$details =$_SESSION["myid"];

echo "welcome " . $details['Username'] . ".<br>";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
</head>
<body>
    <div class="topnav">
        <a class="active" href="#home">Home</a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
      </div>
      <form action="homee.php" method="Post">
        <input type="text" id="your_Thought" name="post_status"><br><br>
        <input type="submit" value="Post">
      </form>

</body>
</html>
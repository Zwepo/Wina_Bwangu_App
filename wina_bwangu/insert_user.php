<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

include('db_connect.php'); // connect to database


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo"Form submitted!<br>";

    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

   
    $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')";

    if (mysqli_query($conn, $sql)) {
        echo "User registered successfully!";
    } else {
        echo "Error: " . mysqli_error($conn);
    }

    mysqli_close($conn);
}
?>

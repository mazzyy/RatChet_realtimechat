<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "crm";
    
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {    
        
        die("Database connection couldn't be eatablish: " . mysqli_connect_error());
    }

?>
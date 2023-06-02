<?php
$servername = "";
$username = "root";
$pass = "";
$db = "ass";
$conn = mysqli_connect($servername, $username, $pass, $db);

if ($conn) {
    $_SESSION['conn'] = true;
} else {
    $_SESSION['conn'] = false;
}

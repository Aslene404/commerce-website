<?php
include('../data_management/connectdb.php');

// Get form data
$login = $_POST['login'];
$total = $_POST['total'];
$items = $_POST['items'];
$status = $_POST['status'];
$address = $_POST['address'];

// Prepare and execute the SQL query
$sql = "INSERT INTO ord (status, address, login, total, items) VALUES ('$status', '$address', '$login', $total, '$items')";

if ($link->query($sql) === TRUE) {
    $sql_delete = "DELETE FROM usr_itm  WHERE login = '$login'";
    if ($link->query($sql_delete) === TRUE) {
        
    } else {
        echo "<script>alert('Error: " . $sql . "\\n" . $link->error . "');</script>";
    }
    header('Location: ../?cat=mycart');
    exit();
} else {
    echo "<script>alert('Error: " . $sql . "\\n" . $link->error . "');</script>";
}


?>

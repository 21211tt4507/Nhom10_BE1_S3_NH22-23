<?php
session_start();
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    unset($_SESSION['cart'][$id]);
    header('location:products.php?id=' . $id);
} else {
    unset($_SESSION['cart']);
}

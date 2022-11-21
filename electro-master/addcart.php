<?php session_start();
if (isset($_GET['id']) && isset($_GET['qty'])) :
    $id = $_GET['id'];
    $qty = $_GET['qty'];
    if (isset($_SESSION['cart'][$id])) :
        $_SESSION['cart'][$id] += $qty;
    else :
        $_SESSION['cart'][$id] = $qty;
    endif;
    header('location:products.php?id='. $id);
endif;

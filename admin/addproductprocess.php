<?php
require "config.php";
require "models/db.php";
require "models/products.php";
require "models/manufactures.php";
require "models/protypes.php";

$products = new Products;

if (isset($_POST['name'])) {
    $name = $_POST['name'];
    $manu_id = $_POST['manu_id'];
    $type_id = $_POST['type_id'];
    $desc = $_POST['description'];
    $soLuongSell = $_POST['soLuongSell'];
    $kho = $_POST['kho'];
    $price = $_POST['price'];
    $image = $_FILES['image']['name'];
    var_dump($price);

    $products->addProduct($name, $type_id, $manu_id, $image, $price, $desc, $soLuongSell, $kho);
    $target_dir = "../img/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    var_dump($target_file);
    move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
    header("location:product.php");
}

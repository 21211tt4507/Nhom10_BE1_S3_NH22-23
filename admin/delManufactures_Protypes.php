<?php
require "config.php";
require "models/db.php";
require "models/products.php";
require 'models/protypes.php';
require 'models/manufactures.php';

$product = new Products;
$protype = new protypes;
$manufacture = new Manufactures;


if (isset($_GET['manu_id'])) {
    $idmanu = $_GET['manu_id'];
    $manufactures->DelManufactures($idmanu);
    header("location:manufacture.php");
}

if (isset($_GET['type_id'])) {
    $type_id = $_GET['type_id'];
    $protypes->DelProtype($type_id);
    header("location:protype.php");
}

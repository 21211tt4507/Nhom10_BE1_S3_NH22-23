<?php
require "config.php";
require "models/db.php";
require "models/products.php";
$product = new Products;
$id = $_GET['id'];
$product->deleteProduct($id);
header("location:product.php");
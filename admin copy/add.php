<?php
require './Config/database.php';
require './app/models/db.php';
require './app/models/products.php';
$product = new Product;
if(isset($_POST['name']))
{
    $name = $_POST['name'];
    $price = $_POST['price'];
    $description = $_POST['description'];
    $image = $_FILES['image']['name'];
    $manu_id = number_format($_POST['manu_id']);
    $type_id = $_POST['type_id'];
    $feature = isset($_POST['feature'])?1:0;
    $created_at= date("Y-m-d");
    $discount= $_POST['discount'];
    $qty_sold= $_POST['qty_sold'];
    $kichthuocmanhinh= $_POST['kichthuocmanhinh'];
    $chip= $_POST['chip'];
    $ram= $_POST['ram'];
    $rom= $_POST['rom'];
    $pin= $_POST['pin'];
    $dophangiai= $_POST['dophangiai'];
    $congketnoi= $_POST['congketnoi'];
    $congsuat= $_POST['congsuat'];
    $hedieuhanh= $_POST['hedieuhanh'];
    $card = $_POST['card'];
    //xu ly them
    $product->ProductById($name,$manu_id,$type_id,$price,$image,$description,$feature,$discount,$qty_sold,$kichthuocmanhinh,$chip,$ram,$rom,$pin,$dophangiai,$congketnoi,$congsuat,$hedieuhanh,$card);
    //xu ly upload
    $target_dir = "../img/";
    $target_file = $target_dir . basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $target_file);
    header("location:products.php");
}
<?php

class Product extends Db
{
    public function getAllProducts()
    {
        //viet cau truy van
        $sql = self::$connection->prepare("SELECT * FROM products ORDER BY 'id' DESC");
        $sql->execute(); //tra ve object
        $data = array(); //tao mang trong 
        $data = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $data; //return an array
    }
    public function getProductById($id)
    {
        //khi cau truy van co them so where thi them bind_param
        $sql = self::$connection->prepare("SELECT * FROM products WHERE id = ?");
        $sql->bind_param("i", $id);
        $sql->execute(); //return an object
        $data = array();
        $data = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $data; //return an array
    }
    public function getProductByManu($manu_id)
    {
        //khi cau truy van co them so where thi them bind_param
        $sql = self::$connection->prepare("SELECT * FROM products WHERE manu_id = ?");
        $sql->bind_param("i", $manu_id);
        $sql->execute(); //return an object
        $data = array();
        $data = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $data; //return an array
    }
}

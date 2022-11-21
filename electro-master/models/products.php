<?php
class Product extends Db
{
    public function getAllProducts()
    {
        $sql = self::$connection->prepare("SELECT id,manu_id,manu_name, name, type_id , price, image,description FROM products, manufactures WHERE products.manu_id = manufactures.manu_id");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductById($id)
    {
        $sql = self::$connection->prepare("SELECT id, manu_name,name,type_id,price,image,description FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND id = ?");
        $sql->bind_param("i", $id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductById2($id)
    {
        $sql = self::$connection->prepare("SELECT id,manu_name,tenLoai,name,price,image,description FROM products INNER JOIN manufactures on products.manu_id = manufactures.manu_id INNER JOIN protype on products.type_id = protype.maLoai WHERE products.id = ?");
        $sql->bind_param("i", $id);
        $sql->execute();
        $items = array(); //return an object
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items[0];
    }
    public function getNewProducts()
    {
        $sql = self::$connection->prepare("SELECT id, name, manu_name, price,image FROM products, manufactures WHERE products.manu_id = manufactures.manu_id ORDER BY `id` DESC LIMIT 0,10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getTopSellingProducts()
    {
        $sql = self::$connection->prepare("SELECT id, name, manu_name, price,image FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND soLuongSell > 300 ");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    
    public function getTopSelling_0_3()
    {
        $sql = self::$connection->prepare("SELECT id, name, manu_name, price,image,soLuongSell FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND soLuongSell > 300 ORDER BY products.soLuongSell DESC LIMIT 0,3");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getTopSelling_3_6()
    {
        $sql = self::$connection->prepare("SELECT id, name, manu_name, price,image,soLuongSell FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND soLuongSell > 300 ORDER BY products.soLuongSell DESC LIMIT 3,3");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getTopSelling_6_9()
    {
        $sql = self::$connection->prepare("SELECT id, name, manu_name, price,image,soLuongSell FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND soLuongSell > 300 ORDER BY products.soLuongSell DESC LIMIT 6,3");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProducts()
    {
        $sql = self::$connection->prepare("SELECT id, manu_id, manu_name,name,type_id,price,image,description FROM products, manufactures WHERE products.manu_id = manufactures.manu_id LIMIT 0,4");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }

    public function getProductByIdMaLoai($id)
    {
        $sql = self::$connection->prepare("SELECT id, manu_name,name,type_id,price,image,description FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND type_id = ?");
        $sql->bind_param("i", $id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function search($keyWord)
    {
        $sql = self::$connection->prepare("SELECT id, manu_id, manu_name,name,type_id,price,image,description FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND name like ?");
        $keyWord = "%$keyWord%";
        $sql->bind_param("s", $keyWord);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
}

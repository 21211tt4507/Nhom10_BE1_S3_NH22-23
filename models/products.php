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
    public function getAllProducts1 ()
    {
        $sql = self::$connection->prepare("SELECT * FROM products ORDER BY id DESC");
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
        $sql = self::$connection->prepare("SELECT id, manu_name,name,type_id,price,image,description FROM products, manufactures WHERE products.manu_id = manufactures.manu_id AND name like ?");
        $keyWord = "%$keyWord%";
        $sql->bind_param("s", $keyWord);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function paginateOfWish($url, $total,$page, $perPage,$offset)
    {
        if($total <= 0) {
            return "";
        }
        $totalLinks = ceil($total/$perPage);
        if($totalLinks <= 1) {
        return "";
        }
        $from = $page - $offset;
        $to = $page + $offset;
        //$offset quy định số lượng link hiển thị ở 2 bên trang hiện hành
        //$offset = 2 và $page = 5,lúc này thanh phân trang sẽ hiển thị: 3 4 5 6 7
        if($from <= 0) {
        $from = 1;
        $to = $offset * 2;
        }
        if($to > $totalLinks) {
        $to = $totalLinks;
        }       
        $links = array();
        $link = "";
        for ($j = $from; $j <= $to; $j++) {
            
            if($j != $_GET['pages'])
            {
                $link = $link."<li><a href = '$url?pages=$j'> $j </a>";              
            }
            else
            {
                $link = $link."<li class='active'><a href = '$url?pages=$j'> $j </a></li>";
            }           
        }
        return $link; 
    }

    public function paginateOftype($url, $total,$page, $perPage,$offset,$id)
    {
        if($total <= 0) {
            return "";
        }
        $totalLinks = ceil($total/$perPage);
        if($totalLinks <= 1) {
        return "";
        }
        $from = $page - $offset;
        $to = $page + $offset;
        //$offset quy định số lượng link hiển thị ở 2 bên trang hiện hành
        //$offset = 2 và $page = 5,lúc này thanh phân trang sẽ hiển thị: 3 4 5 6 7
        if($from <= 0) {
        $from = 1;
        $to = $offset * 2;
        }
        if($to > $totalLinks) {
        $to = $totalLinks;
        }       
        $links = array();
        $link = "";
        for ($j = $from; $j <= $to; $j++) {
            
            if($j != $_GET['pages'])
            {
                $link = $link."<li><a href = '$url?type_id=$id&&pages=$j'> $j </a>";              
            }
            else
            {
                $link = $link."<li class='active'><a href = '$url?type_id=$id&&pages=$j'> $j </a></li>";
            }           
        }
        return $link; 
    }
    public function paginateOfSearch($url, $total,$page, $perPage,$offset,$keyword,$type_prd)
    {
        if($total <= 0) {
            return "";
        }
        $totalLinks = ceil($total/$perPage);
        if($totalLinks <= 1) {
        return "";
        }
        $from = $page - $offset;
        $to = $page + $offset;
        //$offset quy định số lượng link hiển thị ở 2 bên trang hiện hành
        //$offset = 2 và $page = 5,lúc này thanh phân trang sẽ hiển thị: 3 4 5 6 7
        if($from <= 0) {
        $from = 1;
        $to = $offset * 2;
        }
        if($to > $totalLinks) {
        $to = $totalLinks;
        }       
        $links = array();
        $link = "";
        for ($j = $from; $j <= $to; $j++) {
            
            if($j != $_GET['pages'])
            {
                $link = $link."<li><a href = '$url?type_prd=$type_prd&&keyword=$keyword&&pages=$j'> $j </a>";              
            }
            else
            {
                $link = $link."<li class='active'><a href = '$url?type_prd=$type_prd&&keyword=$keyword&&pages=$j'> $j </a></li>";
            }           
        }
        return $link; 
    }
}

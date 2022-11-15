<?php

class Manufacture extends Db
{
    public function getAllManufactures()
    {
        //viet cau truy van
        $sql = self::$connection->prepare("SELECT * FROM manufactures ");
        $sql->execute(); //tra ve object
        $data = array(); //tao mang trong 
        $data = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $data; //return an array
    }
}

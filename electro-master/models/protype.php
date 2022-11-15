<?php

class Protype extends Db
{
    public function getAllProtype()
    {
        //viet cau truy van
        $sql = self::$connection->prepare("SELECT * FROM protype ");
        $sql->execute(); //tra ve object
        $data = array(); //tao mang trong 
        $data = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $data; //return an array
    }
}

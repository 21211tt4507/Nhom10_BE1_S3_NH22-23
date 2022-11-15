<?php
class User {
    public function checkLogin($username, $password)
    {
        $sql = self::$connection->prepare("SELECT * FROM users WHERE 'username' = ? AND 'password' = ?");
        $password = md5($password);
        $sql->bind_param("ss", $username, $password);
        $sql->execute();
        $item = array();
        $item = $sql->get_result()->num_rows;
        if($item == 1){
            return true;
        }
        else{
            return false;
        }
    }
}
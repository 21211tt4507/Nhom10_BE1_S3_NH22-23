<?php 
include "header.php"
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>login</title>
</head>
<body>
<form action='login.php' class="dangnhap" method='POST'>
        Tên đăng nhập : <input type='text' name='username' />
        Mật khẩu : <input type='password' name='password' />
        <input type='submit' class="button" name="dangnhap" value='Đăng nhập' />
        <a href='Resgister.php' title='Đăng ký'>Đăng ký</a>
        <?php require 'xuly.php'; ?>
        <form>
</body>
</html>

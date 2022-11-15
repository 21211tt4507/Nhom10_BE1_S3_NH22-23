<?php
// session_start();
// require "../config.php";
// require "../models/db.php";
// require "../models/user.php";
// $user = new User;
// if (isset($_POST['submit'])) {
//     $username = $_POST['username'];
//     $password = $_POST['password'];
//     if ($user->checkLogin($username, $password)) {
//         $_SESSION['user'] = $username;
//         header('location:../admin');
//     } else {
//         header('location:../index.php');
//     }
// }
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Electro - HTML Ecommerce Template</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- Add js time -->
        <link rel="stylesheet" href="js/time.js">


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
</head>

<body>
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="tel:0988707123"><i class="fa fa-phone"></i> 0988-707-123</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i>eclectron@email.com</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i> Eclectron</a></li>
            </ul>
            <ul class="header-links pull-right">
                <li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
                <li><a href="login.php"><i class="fa fa-user-o"></i> My Account</a></li>
            </ul>
        </div>
    </div>
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="index.php" class="logo">
                            <img src="./img/logo.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>


    <form action='login.php' class="dangnhap" method='POST'>
        Tên đăng nhập : <input type='text' name='username' />
        Mật khẩu : <input type='password' name='password' />
        <input type='submit' class="button" name="dangnhap" value='Đăng nhập' />
        Bạn không có tài khoản ?<a href='Resgister.php' title='Đăng ký'>Đăng ký</a>
        <form>

</body>

</html>
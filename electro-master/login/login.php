<?php session_start();
require "../config.php";
require "../models/db.php";
require "../models/user.php";
$user = new User;
$loi = "";
$check = true;

if(isset($_POST['btn-dangnhap']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    if($user->checklogin($username,$password))
    {
        $_SESSION['user'] = $username;
        header('location:../index.php');
    }
    elseif($username == null || $password == null){
        $loi.= "Nhập UserName hoặc PassWord";
        $check = false;
    }
    else
    {
        $loi.="Sai mật khẩu hoặc tài khoản!!";
        $check = false;
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link type="text/css" rel="stylesheet" href="../css/stylelogin.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">

</head>

<body>
    <section>
        <!--Bắt Đầu Phần Hình Ảnh-->
        <div class="img-bg">
            <a href="../index.php" target="_self">
                <img src="../img/login.png" alt="Hình Ảnh Minh Họa">
            </a>         
        </div>
        <!--Kết Thúc Phần Hình Ảnh-->
        <!--Bắt Đầu Phần Nội Dung-->
        <div class="noi-dung">
            <div class="form">
                <h2>Trang Đăng Nhập</h2>
                <form action="" method="post">
                    <?php if($check == false): ?>
                    <div class="alert alert-danger"><?php echo $loi; ?></div>
                    <?php endif; ?>
                    <div class="input-form">
                        <span>Tên Người Dùng</span>
                        <input type="text" name="username" id="username">
                    </div>
                    <div class="input-form">
                        <span>Mật Khẩu</span>
                        <input type="password" name="password" id="password">
                    </div>
                    <div class="nho-dang-nhap">
                        <label><input type="checkbox" name=""> Nhớ Đăng Nhập</label>
                    </div>
                    <div class="input-form">
                        <input type="submit" value="Đăng Nhập" name="btn-dangnhap">
                    </div>
                    <div class="input-form">
                        <p>Bạn Chưa Có Tài Khoản? <a href="register.php">Đăng Ký</a></p>
                    </div>
                </form>
            </div>
        </div>
        <!--Kết Thúc Phần Nội Dung-->
    </section>
</body>

</html>
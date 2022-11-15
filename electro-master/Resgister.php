<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="css/background-c.css">
    <link rel="stylesheet" href="css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Trang đăng lý</title>
</head>

<body>
    <h1 style="text-align: center;">Trang đăng ký thành viên</h1>
    <div class="resgister">
        <form action="xuly.php" method="POST" class="dangnhap">

            Tên đăng nhập :

            <input type="text" name="txtUsername" size="50" />

            Mật khẩu :

            <input type="password" name="txtPassword" size="50" />

            Email :

            <input type="text" name="txtEmail" size="50" />

            Họ và tên :

            <input type="text" name="txtFullname" size="50" />


            Ngày sinh :

            <input type="text" name="txtBirthday" size="50" />
            <div style="display: flex;">
                <input type="submit" style="width: 100px; display: flex" class="button" value="Đăng ký" />
                <input type="reset" style="width: 100px; margin-left: 30.5px;" class="button" value="Nhập lại" />
                <a href='login.php' style="width: 100px; margin-left: 30.5px; list-style-type: none;" title='Đăng nhập' class="button">Đăng Nhập</a>
            </div>
        </form>
    </div>
</body>

</html>
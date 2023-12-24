<?php
session_start();
include("../database/connect.php");

if(isset($_SESSION['is_logged']) && $_SESSION['is_logged'] == true){

    header('location:dashboard.php');
}


?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
    <div class="row">
        <div class="col-lg-6 d-none d-lg-block" style="background-image:url(img/Capture.png);background-repeat:no-repeat;background-position:cover;"></div>
        <div class="col-lg-6">
            <div class="p-5">




        <div class="text-center">
            <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
        </div>


                <?php

        $data = [];
        $error = [];

        if(isset($_POST["login"]))
        
        {
        $email =validate($_POST['email'])??'';
        $password = $_POST['password']??'';


if(empty($email)){
    $error['email'] = 'email is required';
}

else{
    $data['email'] = filter_var($email,FILTER_SANITIZE_EMAIL);
    if(!filter_var($data['email'],FILTER_VALIDATE_EMAIL)){
        $error['email'] = 'Invalid email format';
    }
}


if(empty($password)){
    $error['password'] = 'Enter your password';
}

else{
    $data['password'] = $password;
}
            

if(empty($error['email'])&&empty($error['password'])){
$sql = "SELECT * FROM admin WHERE email = :email";

$stmt = $conn->prepare($sql);

$stmt->bindParam(':email',$data['email'],PDO::PARAM_STR);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_OBJ);

if($row)
{
    if(password_verify($data['password'], $row->password))
    {
    $_SESSION['name']           = $row->name;
    $_SESSION['admin_id']           = $row->id;
     $_SESSION['is_logged']       = true;
     header("location:dashboard.php");
    }

    else{
        echo 'invalid password';
    }
}

else{
    $error['email'] = 'email not found';
}

}



}




 function validate($data){
 $data = htmlspecialchars($data);
 $data  = trim($data);
return $data;
        }
            
            
?>


  <form class="user" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="post">

   <div class="form-group">
<input type="email" name="email" class="form-control form-control-user" id="exampleInputEmail" value="<?php echo $data['email']?? ''?>" aria-describedby="emailHelp" 
placeholder="Enter Email Address...">
<span class="text-danger"><?php echo $error['email']??''?></span>
        </div>

     <div class="form-group">
 <input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
 <span class="text-danger"><?php echo $error['password']?? ''?></span>
 </div>

    <div class="form-group">
        <div class="custom-control custom-checkbox small">
            <input type="checkbox" class="custom-control-input" id="customCheck">
            <label class="custom-control-label" for="customCheck">Remember  Me</label>
        </div>
    </div>

    <button type="submit" name="login" class="btn btn-primary btn-user btn-block">   Login </button>


    </form>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
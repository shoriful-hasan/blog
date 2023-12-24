<?php
$title = 'tag';
include "layout/head.php";

?>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php
        include "layout/sidebar.php";
        ?>
        <!-- End of Sidebar -->


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
             <?php include "layout/topbar.php"?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Tag</h1>
                        <a href="tag.php" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm"><i
                                class="fas fa-plus"></i>Back to List</a>
                    </div>

                    <!-- Content Row -->
                         <!-- DataTales Example -->
                         <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tag Create</h6>
                        </div>
                        <div class="card-body">
                        <div class="container py-4">



<?php

$error = [];
$data = [];


if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $tagname = $_POST['tagName'];
    $tagslug = $_POST['tagSlug'];



if(empty($tagname))
{$error['tagName'] = 'tagName is Require';}

else{
    $data['tagName'] = $tagname;
}


if(empty($tagslug))
{
    $error['tagSlug'] = 'tagSlug is Required';
}



else{
    $data['tagSlug']  = $tagslug;
}

if(empty($error['tagName']) && empty($error['tagSlug']))
{
    try {
    
      $sql = "INSERT INTO tag(name,slug)VALUES(:name,:slug)";
      if($stmp = $conn->prepare($sql)){
        $stmp->bindParam(':name',$data['tagName'],PDO::PARAM_STR);
        $stmp->bindParam(':slug',$data['tagSlug'],PDO::PARAM_STR);
      }  
    if($stmp->execute()){
        $_SESSION['success'] = 'tag insert successfully';
                //header('location:category.php');    
   echo '<script>window.location.href="tag.php"</script>';
    }




    } catch (PDOException $e) {
      die('could not insert tag'.$sql .$e->getMessage());
    }
} 







}









// function valid($rose){
//     $data = trim($rose);
//     $data = stripcslashes($rose);
//     $data = htmlspecialchars($rose);
    
//     return $data;
    
//     }
    

?>

 <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="post">


<div class="mb-3">
    <label for="tagName" class="form-label">Tag Name</label>
    <input type="text" name="tagName" class="form-control" id="tagName" value ="">
    <span class="text-danger"></span><?php echo $error['tagName']?? '';?></span>
</div>


<div class="mb-3">
    <label for="tagSlug" class="form-label">Tag Slug</label>
    <input type="text" name="tagSlug" class="form-control" id="tagSlug" value ="">
    <span class="text-danger"></span><?php echo $error['tagslug']?? '';?></span>
</div>


<button type="submit" name="submit" class="btn btn-success">Create</button>

</form>














                <!-- </div> -->
            <!-- </div> -->
        <!-- </div> -->
    <!-- </div> -->
</div>
                        </div>
                    </div>
                    <!-- Content Row -->

 
                 
                    <!-- Content Row -->

                    
                    

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>this is my country</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>



<!-- 

<script>
    $('#categoryName').on('keyup', function () {
        $("#categorySlug").val('');
        var category = $(this).val();
        category = slugify(category);
        $("#categorySlug").val(category);
    });

    function slugify(text) {
        return text.toLowerCase()
            .replace(/^-+|-+$/g, '')
            .replace(/\s/g, '-')
            .replace(/\-\-+/g, '-');
    }


</script>
 -->

 <?php
include "layout/footer.php";
 
 ?>   

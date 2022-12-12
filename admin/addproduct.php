<?php
require "header.php";
require "sidebar.php";

?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Add New Product</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Validation</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- jquery validation -->
          <div class="card card-primary">
            <div class="card-header">
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="addproductprocess.php" method="post" enctype="multipart/form-data">
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Name</label>
                  <input type="text" name="name" class="form-control" id="name" placeholder="Enter Name">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Price</label>
                  <input type="number" name="price" class="form-control" id="price" placeholder="Enter Price">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Image</label>
                  <input type="file" name="image" class="form-control" id="image">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Description</label>
                  <input type="text" name="description" class="form-control" id="description" placeholder="Enter Description">
                </div>               
                <div class="form-group">
                  <label for="exampleInputPassword1">Sold</label>
                  <input type="number" name="soLuongSell" class="form-control" id="soLuongSell" placeholder="Enter soLuongSell">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Kho</label>
                  <input type="number" name="kho" class="form-control" id="kho" placeholder="Enter kho">
                </div>

                <div class="form-group">
                  <label for="inputStatus">Manufacture</label>
                  <select name="manu_id" id="inputStatus" class="form-control custom-select">
                    <option selected disabled>Select one</option>
                    <?php $getManu = $manufacture ->getAllMaunufactures();
                    foreach ($getManu as $value) { ?>
                      <option value="<?php echo $value['manu_id'] ?>"><?php echo $value['manu_name'] ?></option>
                    <?php } ?>
                  </select>
                </div>

                <div class="form-group">
                  <label for="inputStatus">Protype</label>
                  <select name="type_id" id="inputStatus" class="form-control custom-select">
                    <option selected disabled>Select one</option>
                    <?php $gettype = $protype->getAllProtype();
                    foreach ($gettype as $value) { ?>
                      <option value="<?php echo $value['type_id'] ?>"><?php echo $value['type_name'] ?></option>
                    <?php } ?>
                  </select>
                </div>
                <!-- <div class="form-group mb-0">
                  <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="feature" class="custom-control-input" id="feature">
                    <label class="custom-control-label" for="feature">Feature</label>
                  </div>
                  <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="onsale" class="custom-control-input" id="onsale">
                    <label class="custom-control-label" for="onsale">On Sale</label>
                  </div>
                </div> -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">ADD</button>
              </div>
            </form>
          </div>
          <!-- /.card -->
        </div>
        <!--/.col (left) -->
        <!-- right column -->
        <div class="col-md-6">

        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jquery-validation -->
<script src="../../plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="../../plugins/jquery-validation/additional-methods.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page specific script -->
<?php
require "footer.php";
?>
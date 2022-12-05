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
          <h1>Projects</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Projects</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">

    <!-- Default box -->
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Products</h3>
        <button type="button" class="btn btn-success">
          <a href="addproduct.php">Add</a>
        </button>
        <!-- <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
            <i class="fas fa-minus"></i>
          </button>
          <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
            <i class="fas fa-times"></i>
          </button>
        </div> -->
      </div>
      <div class="card-body p-0">
        <table class="table table-striped projects">
          <thead>

            <tr>
              <th style="width: 1%">
                ID
              </th>
              <th style="width: 9%">
                Name
              </th>
              <th style="width: 5%">
                Manufacture
              </th>
              <th style="width: 5%">
                Protype
              </th>
              <th style="width: 10%" class="text-center">
                Image
              </th>
              <th style="width: 10%">
                Price
              </th>
              <th style="width: 30%">
                Description
              </th>
              <th style="width: 5%" class="text-center">
                Sold
              </th>
              <th style="width: 5%" class="text-center">
                Instock
              </th>
              <!-- <th style="width: 20%" class="text-right">
                Action
              </th> -->
            </tr>
          </thead>
          <tbody>
            <?php
            $allProducts = $product->getAllProducts();
            foreach ($allProducts as $value) {
            ?>
              <tr>
                <td>
                  <?php echo $value['id'] ?>
                </td>
                <td>
                  <?php echo $value['name'] ?>
                </td>
                <td>
                  <?php echo $value['manu_name'] ?>
                </td>
                <td>
                  <?php echo $value['type_name'] ?>
                </td>
                <td>
                  <img style="height: 90px; width: 90px" src="./img/<?php echo $value['image'] ?>" alt="hinh">
                </td>
                <td>
                  <?php echo number_format($value['price']) ?> VND
                </td>
                <td>
                  <?php echo substr($value['description'], 0, 70) . "..." ?>
                </td>
                <td class="text-center">
                  <?php echo $value['soLuongSell'] ?>
                </td>
                <td class="text-center">
                  <?php echo $value['kho'] ?>
                </td>
                <td class="project-actions text-right">
                  <a class="btn btn-primary btn-sm" href="#">
                    <i class="fas fa-folder">
                    </i>
                    View
                  </a>
                  <a class="btn btn-info btn-sm" href="editproduct.php?id=<?php echo $value['id'] ?>">
                    <i class="fas fa-pencil-alt">
                    </i>
                    Edit
                  </a>
                  <a class="btn btn-danger btn-sm" href="deleteproduct.php?id=<?php echo $value['id'] ?>">
                    <i class="fas fa-trash">
                    </i>
                    Delete
                  </a>
                </td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <!-- /.card-body -->
    </div>
    <!-- /.card -->

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<!-- ./wrapper -->
<?php
require "footer.php";
?>
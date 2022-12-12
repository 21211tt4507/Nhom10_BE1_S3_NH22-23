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
            <h1>User</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User</li>
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
          <h3 class="card-title">User</h3>
          <button style="margin: -6px 12px;" type="button" class="btn btn-success">
          <a href="addprotype.php">Add</a>
        </button>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body p-0">
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 1%">
                          id_User
                      </th>
                      <th style="width: 20%">
                          User Name
                      </th>
                      <th style="width: 30%">
                          Password
                      </th>
                      <!-- <th>
                          Project Progress
                      </th>
                      <th style="width: 8%" class="text-center">
                          Status
                      </th>
                      <th style="width: 20%">
                      </th> -->
                  </tr>
              </thead>
              <tbody>
            <?php
            $allUser = $user->getAllUser();
            foreach ($allUser as $value) {
            ?>
              <tr>
                <td>
                  <?php echo $value['id_user'] ?>
                </td>
                <td>
                  <?php echo $value['username'] ?>
                </td>
                <td>
                  <?php echo $value['password'] ?>
                </td>
                
                <td class="project-actions text-right">               
                  <a class="btn btn-info btn-sm" href="editproduct.php?id=<?php echo $value['id_user'] ?>">
                    <i class="fas fa-pencil-alt">
                    </i>
                    Edit
                  </a>
                  <a class="btn btn-danger btn-sm" href="deleteproduct.php?id=<?php echo $value['id_user'] ?>">
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
<!-- ./wrapper -->

<?php 
require "footer.php";
?>

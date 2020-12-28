
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?php            
              
echo $_SESSION['u_name'];

            ?></a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
            <a href="./leadstatus.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               LEAD STATUS

              </p>
            </a>
          </li>
              <li class="nav-item">
                <a href="./provider.php" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Providers</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./services.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Service</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="./lead_source.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Lead Source</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="./addlead.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Add Lead
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="./lead_table.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Lead View
                
              </p>
            </a>
          </li>

            <li class="nav-item">
                <a href="./add-user.php" class="nav-link">
                  <i class="nav-icon fas fa-th"></i>
                  <p>Add User</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="./campaing_schedule.php" class="nav-link">
                    <i class="nav-icon fas fa-th"></i>
                    <p>
                    Campaing Schedule
                    </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./time.php" class="nav-link">
                    <i class="nav-icon fas fa-th"></i>
                    <p>
                    Time
                    </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./schedule.php" class="nav-link">
                    <i class="nav-icon fas fa-th"></i>
                    <p>
                    Attendence Report
                    </p>
                </a>
              </li>

          <li class="nav-item">
            <a href="./add-department.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               Department
               
              </p>
            </a>
          </li>



                <li class="nav-item">
                <a href="./new.php" class="nav-link">
                  <i class="nav-icon fas fa-th"></i>
                  <p>Customer</p>
                </a>
              </li>
          

          <li class="nav-item">
            <a href="./add-designation.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               Designation
               
              </p>
            </a>
          </li>




          

          <li class="nav-item">
            <a href="./add-employee.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               Employee
               
              </p>
            </a>
          </li>




          

          <li class="nav-item">
            <a href="./index(2).php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               index2
               
              </p>
            </a>
          </li>




          

          <li class="nav-item">
            <a href="./profile.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               Profile
               
              </p>
            </a>
          </li>




          

        <!--   <li class="nav-item">
            <a href="./leadstatus.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               LEAD STATUS
               
              </p>
            </a>
          </li>




          

          <li class="nav-item">
            <a href="./leadstatus.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               LEAD STATUS
               
              </p>
            </a>
          </li>




          

          <li class="nav-item">
            <a href="./leadstatus.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
               LEAD STATUS
               
              </p>
            </a>
          </li> -->




          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

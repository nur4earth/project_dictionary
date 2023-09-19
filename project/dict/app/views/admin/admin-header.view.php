<?php

  use \Model\Auth;

  $id = $id ?? Auth::getId();
  $user = new \Model\User();
  $data['row'] = $row = $user->first(['id'=>$id]);


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Жеке статистика - <?=APP_NAME?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?=ROOT?>/niceadmin/assets/img/favicon.png" rel="icon">
  <link href="<?=ROOT?>/niceadmin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?=ROOT?>/niceadmin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?=ROOT?>/niceadmin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<?=ROOT?>/niceadmin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?=ROOT?>/niceadmin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="<?=ROOT?>/niceadmin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="<?=ROOT?>/niceadmin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?=ROOT?>/niceadmin/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?=ROOT?>/niceadmin/assets/css/style.css" rel="stylesheet">
  <link href="<?=ROOT?>/assets/css/custom.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body >

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="<?=ROOT?>/niceadmin/assets/img/logo.png" alt="">
        <span class="d-none d-lg-block"><?=APP_NAME?></span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <!-- <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div> --><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <!-- <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li> --><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              Сізде 4 хабарландыру бар
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">Бәрін көру</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Барлық хабарландыруды көру</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              Сізде 3 хабарлама бар!
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">Бәрін көру</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="<?=ROOT?>/niceadmin/assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="<?=ROOT?>/niceadmin/assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="<?=ROOT?>/niceadmin/assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="#">Барлық хабарламаны көру</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="<?=get_image($row->image)?>" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2"><?=ucfirst(substr(Auth::getFirstname(),0,1))?>. <?=Auth::getLastname()?></span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><?=Auth::getFirstname()?> <?=Auth::getLastname()?></h6>
              <span><?=Auth::getRole()?></span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>Жеке кабинет</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Аккаунт жөндеу параметрі</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Көмек қажет пе?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?=ROOT?>/logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Шығу</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <?php if(user_can('view_dashboard')):?>
      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/dashboard">
          <i class="bi bi-grid"></i>
          <span>Жеке статистика</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endif;?>

      <?php if(user_can('view_categories')):?>
      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/courses">
          <i class="bi bi-camera-reels"></i>
          <span>My Courses</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endif;?>
 
      <?php if(user_can('view_categories')):?>
        <li class="nav-item">
          <a class="nav-link " href="<?=ROOT?>/admin/categories">
            <i class="bi bi-list"></i>
            <span>Categories</span>
          </a>
        </li><!-- End Dashboard Nav -->
      <?php endif;?>

      <?php if(user_can('view_roles')):?>
        <li class="nav-item">
          <a class="nav-link " href="<?=ROOT?>/admin/roles">
            <i class="bi bi-people"></i>
            <span>User Roles</span>
          </a>
        </li><!-- End Dashboard Nav -->
       <?php endif;?>


      <?php if(user_can('view_categories')):?>
      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/lessons">
          <i class="bi bi-person-video3"></i>
          <span>Enrolled Courses</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endif;?>


     <?php if(user_can('view_categories')):?> 
      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/courses">
          <i class="bi bi-hourglass-split"></i>
          <span>Watch History</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endif;?>
      
      <?php if(user_can('view_sales')):?>
      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/sales">
          <i class="bi bi-cash-coin"></i>
          <span>Sales</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endif;?>

      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/profile">
          <i class="bi bi-person"></i>
          <span>Жеке кабинет</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <?php if(user_can('edit_slider_images')):?>
       <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>/admin/slider-images">
          <i class="bi bi-images"></i>
          <span>Slider Images</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endif;?>
      
      

      <li class="nav-item">
        <a class="nav-link " href="<?=ROOT?>">
          <i class="bi bi-globe"></i>
          <span>Home</span>
        </a>
      </li><!-- End Dashboard Nav -->

  

 
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">
    
    <?php if(message()):?>
      <div class="alert alert-danger text-center"><?=message('',true)?></div>
    <?php endif;?>

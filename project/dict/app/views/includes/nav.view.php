<?php

  use \Model\Auth;
  $categories = get_categories();

?>

<style>
  @media (max-width: 480px) {

.navbar {
  height:100vh;
  margin:0px;
 }
.navbar-menu{
  margin:0px;
 }

}
</style>


  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="<?=ROOT?>" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="<?=ROOT?>/zenblog/assets/img/logo.png" alt=""> -->
        <h1><?=APP_NAME?></h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul class = "menu">
      


          <?php if(!Auth::logged_in()):?>
            <li><a href="<?=ROOT?>/login">Кіру</a></li>
            <li><a href="<?=ROOT?>/signup">Тіркелу</a></li>
          <?php else:?>

            <li class="dropdown"><a href="category"><span>Сәлем, <?=Auth::getFirstname()?></span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
              <ul>
                <li><a href="<?=ROOT?>/admin/dashboard">Іздеу</a></li>
                <li><a href="#">Жеке кабинет</a></li>
                <li><a href="#">Жөндеу параметрі</a></li>
                <li><a href="<?=ROOT?>/logout">Шығу</a></li>
              </ul>
            </li>
          <?php endif;?>

        </ul>
      </nav><!-- .navbar -->
 
      <div class="position-relative">
        <a href="#" class="mx-2"><span class="bi-facebook"></span></a>
        <a href="#" class="mx-2"><span class="bi-twitter"></span></a>
        <a href="#" class="mx-2"><span class="bi-instagram"></span></a>

        <a href="#" class="mx-2 js-search-open"><span class="bi-search"></span></a>
        <i class="bi bi-list mobile-nav-toggle"></i>

        <!-- ======= Search Form ======= -->
        <div class="search-form-wrap js-search-form-wrap">
          <form action="search-result" class="search-form">
            <span class="icon bi-search"></span>
            <input type="text" placeholder="Search" class="form-control">
            <button class="btn js-search-close"><span class="bi-x"></span></button>
          </form>
        </div><!-- End Search Form -->

      </div>

    </div>

  </header><!-- End Header -->

  <main id="main">
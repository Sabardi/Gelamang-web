<?php
include_once "webMenu.php";
// include_once "konten.php"
?>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <a href="index.php"><img src="assets/img/gelamang-logo.png" alt="" class="img-fluid"></a>
        <a href="index.php">Pringgabaya Gelamang</a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
            <?php
            // menggunakan  associative array untuk mengakses array yang ada di file webMenu
                foreach ($menuAtas as $key => $value) {
                    if (!empty($_GET['hal']) && $_GET['hal'] == $key) {
                        echo "<li><a class='active' href='index.php?hal=$key'>$value</a></li>";
                    }else{
                        echo "<li><a  href='index.php?hal=$key'>$value</a></li>";
                    }
                }
            ?>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      <!-- .navbar -->
    </div>
  </header>
  <!-- End Header -->
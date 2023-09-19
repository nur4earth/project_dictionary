<?php $this->view('admin/admin-header',$data) ?>
<?php 
if (isset($data[0]['kaz'])) {
  $data1 = $data;
}
use \Model\Auth;
$id = $id ?? Auth::getId();

$user = new \Model\User();
$data = $user->where(['id'=>$id]);
$data = json_decode(json_encode($data),true);




?>

    <div class="pagetitle">
      <h1>IOT Сөздік</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Іздеу</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">


          

            
            <div class="col-12">
              <div class="card">



              <div class="search-bar">
              <form class="search-form d-flex align-items-center" method="POST">
                <input style = "width:100%; border-radius:10px; margin:20px;" type="text" name="query" placeholder="Search" title="Enter search keyword">
                <button style = "margin-right:20px;" type="submit" title="Search"><i class="bi bi-search"></i></button>
              </form>
            </div> <!-- End Search Bar -->

            

                

                <div class="card-body">
                  
                  <?php
                    
                    //var_dump($data1);
                    if (isset($data1)) {
              
                      $l =  "<table class='table'>
                      <thead>
                        <tr>
                          <th scope='col'>Қазақша</th>
                          <th scope='col'>Орысша</th>
                          <th scope='col'>Ағылшынша</th>
                        </tr>
                      </thead>
                      <tbody>";

                      for($i = 0; $i < count($data1); $i++) {
                        if (isset($data1[$i]['kaz'])) {
                          $x1 = $data1[$i]['kaz'];
                        }
                        if (isset($data1[$i]['rus'])) {
                          $x2 = $data1[$i]['rus'];
                        }

                        if (isset($data1[$i]['en'])) {
                          $x3 = $data1[$i]['en'];
                        }
                        
                        $l .= "<tr>
                        <td>" . $x1 . "</td>
                        <td>" . $x2 . "</td>
                        <td>" . $x3 . "</td>
                      </tr>";
                      }

                      $l .= "</tbody></table>";
                      echo $l;
                    }
                  ?>

                </div>

              </div>
            </div><!-- End Reports -->

        


      </div>
                  </div>
  
    </section>


<?php $this->view('admin/admin-footer',$data) ?>
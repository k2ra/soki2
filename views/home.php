<?php include('component/header.php'); ?>


  <body class="nav-sm">
    <div class="container body">
      <div class="main_container">

       <?php include('component/menu.php'); ?>

       <?php include('component/topbar.php'); ?>     
          
        <!-- page content -->

        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
            <div id="msg"></div>
              <div class="title_left">
                <h3>Home </h3>
              </div>

             
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Mis Encuestas</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  

                 
                    
<table class="table table-striped  projects">
        <thead>
          <th>Titulo</th>
          <th>Unidad Evaluada</th>
          <th>Fecha de Creacion</th>
          <th>Completadas</th>
          <th>Pendientes</th>
          <th></th>
        </thead>
          <tbody>
                   
<?php

//print_r($resp);

foreach ($resp as $key => $value) {
    
  //echo ""$resp[$key ]['preguntas'];
  echo '<tr><td><b>'.$resp[$key ]["titulo"].'</b></td>';
  echo '<td></td>';
  echo '<td>'.$resp[$key ]["fecha"].'</td>';
  echo '<td>'.$resp[$key ]["completado"].'</td>';
  echo '<td>'.$resp[$key ]["pendiente"].'</td>';
  echo '<td><button id ="reportpdf"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></button></td></tr>';
}

?>
      </tbody>
 </table>                 

                      

                      
                      
                    <!-- end project list -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <?php include('views/component/footers.php'); ?>
    <script src="views/js/muestraEvaluacion.js"></script>
  </body>
</html>
  <!-- Modal -->
  <div class="modal fade" id="loginModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          Iniciar Sesión
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          <form action="/action_page.php">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
        </div>
      </div>
      
    </div>
  </div>

 <!-- Footer  bg-dar"-->
    <footer class="py-2" style="background-color: #a5a5a5">
        <div class="container">
            <div class="row">
                <div class="col-md-7 order-md-2">
                   Direccion: Francisco Granados No.80, Margarita Viguri, Chilpancingo de los Bravo, Gro. Cel: 747 110 6653 / 747 529 9868
                </div>
                <div class="col-md-5 order-md-1">
                  Contenido del sitio 2018-2019 De La Mancha A.C.
                    <a data-toggle="modal" data-target="#loginModal">
                        <i class="fa fa-sign-in-alt"></i>
                    </a>
                 
                </div>
                <!--<p class=" col-4 m-0 text-left text-white">Contenido del sitio 2018-2019 De La Mancha A.C.
                    <a data-toggle="modal" data-target="#loginModal">
                        <i class="fa fa-sign-in-alt"></i>
                    </a>
                </p>
                <p class=" col-1  m-0 text-center text-white"></p>
               
                <p class="col-7 m-0 text-center text-white">Direccion: Alberto González Valle 12, Margarita Viguri, Chilpancingo de los Bravo, Gro. <br>Tel: 747 110 6653
                </p>-->
            </div>
        </div>
        <!-- /.container -->
    </footer>
    <script src="<?= PUBLIC_PATH ?>/js/jquery.js"></script>
    <script src="<?= PUBLIC_PATH ?>/js/bootstrap.js"></script>
</body>

</html>
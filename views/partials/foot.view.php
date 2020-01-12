<!-- Modal -->
<div class="modal fade" id="loginModal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    Iniciar Sesión
                    <button class="close" data-dismiss="modal" type="button">
                        ×
                    </button>
                </div>
                <div class="modal-body">
                    <form action="/action_page.php">
                        <div class="form-group">
                            <label for="email">
                                Usuario o correo electronico:
                            </label>
                            <input class="form-control" id="email" type="email"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">
                                Contraseña:
                            </label>
                            <input class="form-control" id="pwd" type="password"/>
                        </div>
                        <div class="form-group form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox">
                                    Recordarme
                                </input>
                            </label>
                        </div>
                        <button class="btn btn-primary" type="submit">
                            Ingresar
                        </button>
                    </form>
                </div>
            </div>
    </div>
  </div>

<!-- Footer  bg-dar"-->
<footer class="page-footer font-small teal py-2" style="background-color: #a5a5a5">
  <div class="container-fluid text-center text-md-left">
    <div class="row">
      <div class="col-md-5 mt-md-0 mt-1">
        <p>Contenido del sitio 2018-2019 De La Mancha A.C.
          <a data-toggle="modal" data-target="#loginModal">
           <i class="fa fa-sign-in-alt"></i>
          </a>
        </p>
      </div>
      <hr class="clearfix w-100 d-md-none pb-3">
      <div class="col-md-7 mb-md-0 mb-2">
        <p><b>Direccion:</b> Francisco Granados No.80, Margarita Viguri, Chilpancingo de los Bravo, Gro. <b>Cel:</b> 747 110 6653 / 747 529 9868</p>       
      </div>
    </div>
  </div>
<!-- /.container -->
</footer>
    <script src="<?= PUBLIC_PATH ?>/js/jquery.js"></script>
    <script src="<?= PUBLIC_PATH ?>/js/bootstrap.js"></script>
</body>

</html>
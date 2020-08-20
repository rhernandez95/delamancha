<?php
 $title = "Contacto";
?>

<?php include APP_PATH . '/views/partials/head.view.php' ?>
<?php include APP_PATH . '/views/partials/header.view.php' ?>

   
	<div class="container" id="container">
        <div class="row">
            <?php if (isset($errorMessage)): ?>
                <div class="alert alert-danger" role="alert" id="errorAlert">
                    <?= $errorMessage ?>                    
                </div>
            <?php endif; ?>

            <?php if (!empty($msg)) {
                echo "<div class='alert alert-success' role='alert' id='successAlert'> $msg </div>" . sleep(1);
                 echo "Loop started!\n" . sleep(1);
            }?>
        </div>

        <div class="row">
            <div class="col-md-5 order-md-2 mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Contacto</span>
                </h4>
                
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0"><strong>Cel.</strong></h6>
                        </div>
                        
                        <span class="text-muted"><a href="https://wa.me/527471106653"  target="_blank">747-110-6653</a> / <a href="https://wa.me/527475299868"  target="_blank">747-529-9868</a></span>
                    
                    </li>

                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0"><strong>E-mail</strong></h6>
                        </div>
                        <a href="mailto:delamanchaa.c@gmail.com?Subject=Interesado%20en%20el%20grupo">
                            <span class="text-muted">delamanchaa.c@gmail.com</span>
                        </a>
                    </li>

                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0"><strong>Facebook</strong></h6>
                        </div>
                        <a href="https://www.facebook.com/delamancha.grupo"  target="_blank">
                            <span class="text-muted">Miguel de Cervantes Saavedra</span>
                        </a>
                    </li>

                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0"><strong>Fan Page</strong></h6>
                        </div>
                        <a href="https://www.facebook.com/QUIJOTE23/" target="_blank">
                            <span class="text-muted">Grupo Cultural De la Mancha A.C.</span>
                        </a>
                    </li>
                </ul>
            </div>
    
            <div class="col-md-7 order-md-1">
                <h4 class="mb-3">Contactar</h4>
                <form class="needs-validation" novalidate method="post" action="<?= PUBLIC_PATH . '/contacto' ?>">
                    
                    <div class="col-md-7 mb-3">
                        <label for="firstName">Nombre(s) Completo*</label>
                        <input type="text" class="form-control" name="name" id="firstName" value="<?= $name ?? '' ?>" required />
                    </div>        

                    <!--
                    <small class="text-muted">Brief description</small>
                    <div class="col-md-7 mb-3">
                        <label for="username">Username</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">@</span>
                            </div>
                            <input type="text" class="form-control" id="username" placeholder="Username" required>
                    
                            <div class="invalid-feedback" style="width: 100%;">
                                Your username is required.
                            </div>
                        </div>
                    </div>-->

                    <div class="col-md-7 mb-3">
                        <label for="email">Correo electrónico*</label> 
                        <input type="email" class="form-control" name="email" id="email" placeholder="you@example.com" value="<?= $email ?? '' ?>" required>
                        
                        <div class="invalid-feedback">
                            Please enter a valid email address for shipping updates.
                        </div>
                    </div>

                    <div class="col-md-7 mb-3">
                        <label for="message">Mensaje*</label>
                        <textarea class="form-control" name="message" rows="4" id="message" required><?= $message ?? '' ?></textarea>
                    </div>

                    <div class="col-md-7 mb-3">
                        <img src="<?= $captcha->inline() ?>" />
                    </div>
                
                    <div class="col-md-7 mb-3">
                        <input type="text" class="form-control" name="captcha" placeholder="Escriba el texto de la imagen" required />
                    </div>

                    <div class="col-md-7 mb-3">
                        <small class="text-muted">Los campos marcador con <strong>*</strong> son requeridos. </small>   
                        <br>
                        <button type="submit" class="btn btn-primary my-2">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php include APP_PATH . '/views/partials/foot.view.php' ?>


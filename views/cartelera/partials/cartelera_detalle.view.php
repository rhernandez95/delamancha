<?php  $title = "Obra detalle"; ?>
<?php include APP_PATH . '/views/partials/head.view.php' ?>
<?php include APP_PATH . '/views/partials/header.view.php' ?>
    <div class="container" id="container">
    	<div class="row">
            <section style="display: block; margin-left: auto; margin-right: auto;">
                <img src="<?= PUBLIC_PATH ?>/img/carousel/notfound3.svg" class="img-fluid">
            </section>
		</div>

        <header style="text-align: center;" class="mt-1 mb-3">
            <h4><b>1970 y la noche del porvenir</b></h4>
            <p><b>Dirección:</b> <br>
            <b>Dramaturgia:</b>  <br>
            <b>Elenco:</b> </p>
                <li>as</li>
                <li>as</li>
        </header>

        <?php include APP_PATH . '/views/cartelera/partials/cartelera_actores.view.php'?>        

        <div class="row">
            <div class="s-content__main">
                <h3 id="h3-small"><b>Sinopsis:</b></h3>
                <p class="res">Se constituyó jurídicamente el 19 de Julio de 2013, iniciando así una estructura organizacional regida por un Consejo Directivo conformado principalmente por : Presidencia, Secretaría y Tesorería, posteriormente se abrieron las comisiones  de acuerdo a las necesidades de la organización. 2014 a la fecha ha realizado giras Estatales y Regionales con temas que se han ido adaptando constantemente a los cambios sociales, políticos y culturales del Estado de Guerrero y México., así como ha tenido a su cargo la producción y operatividad de los festivales y proyectos más importantes del Estado de Guerrero.</p>
            </div>
        </div>

        <div class="row mt-3">
            <section style="display: block; margin-left: auto; margin-right: auto;">
                <div class="card-deck" style="text-align: center;">
                    <div class="card text-white bg-obra mb-3" style="max-width: 18rem;">
                        <div class="card-header card-header-obra">Temporada</div>
                        <div class="card-body">
                            <h5 class="card-title">Info card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>

                    <div class="card text-white bg-obra mb-3" style="max-width: 18rem;">
                        <div class="card-header card-header-obra">Recinto</div>
                        <div class="card-body">
                            <h5 class="card-title">Info card title</h5>
                             <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>

                    <div class="card text-white bg-obra mb-3" style="max-width: 18rem;">
                        <div class="card-header card-header-obra">Boletos</div>
                        <div class="card-body">
                            <h5 class="card-title">Info card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>

                <div class="card-deck" style="text-align: center;">
                    <div class="card text-white bg-obra mb-3" style="max-width: 18rem;">
                        <div class="card-header card-header-obra">Horarios</div>
                        <div class="card-body">
                            <h5 class="card-title">Info card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>

                    <div class="card text-white bg-obra mb-3" style="max-width: 18rem;">
                        <div class="card-header card-header-obra">Edad Mínima</div>
                        <div class="card-body">
                            <h5 class="card-title">Info card title</h5>
                             <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>

                    <div class="card text-white bg-obra mb-3" style="max-width: 18rem;" hidden="true">
                        
                    </div>
                </div>
            </section>
        </div>

        <?php include APP_PATH . '/views/cartelera/partials/cartelera_galeria.view.php'?>
    </div>
<?php include APP_PATH . '/views/partials/foot.view.php' ?>
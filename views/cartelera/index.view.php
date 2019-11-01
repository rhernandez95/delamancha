<?php  $title = "Obras"; ?>
<?php include APP_PATH . '/views/partials/head.view.php' ?>
<?php include APP_PATH . '/views/partials/header.view.php' ?>

    <!-- <div class="l-main ed-container">
        <div class="ed-item">
            <h2 class="productos__title">Productos destacados</h2>
            <?php //include APP_PATH . '/views/articles/partials/list.view.php'?> 
        </div>
    </div> -->	
    <div class="container" id="container">
    	<div class="row">
            <section style="display: block; margin-left: auto; margin-right: auto;">
                <img src="<?= PUBLIC_PATH ?>/img/carousel/notfound3.svg" class="img-fluid">
            </section>
		</div>
   		<?php include APP_PATH . '/views/cartelera/partials/cartelera_list.view.php' ?>
    </div>

<?php include APP_PATH . '/views/partials/foot.view.php' ?>
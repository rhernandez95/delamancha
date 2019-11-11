<div class="container my-3">
    <div id="big-badge-dark">
    	<div><i class="fa fa-info-circle" aria-hidden="true"/>&nbsp;&nbsp;</i></div>
    	<div>De La Mancha - Obras y Eventos.</div>
	</div>
    <div class="row">
    	<section class="features-icons bg-light text-center">
		    <div class="container">
		    	<div class="row">
		      		<div class="col-md-3">
		      			<a href="<?= PUBLIC_PATH . '/obra?id=' . $obra->id ?>">
		      				<img src="<?= PUBLIC_PATH ?>/img/carousel/notfound2.svg" class="img-fluid mb-2">
			        	</a>
			        </div>

			        <div class="col-md-9">
			        	<div class="row">
			        		<div class="col-md-12">
			        			<h4><a href="<?= PUBLIC_PATH . '/obra?id=' . $obra->id ?>" style="text-decoration:none; color:inherit;"> TITULO OBRA </a></h4>
			        		</div>
			        	</div>
			        	
			        	<div class="row">
			        		<div class="col-lg-4">
			        			<a href="<?= PUBLIC_PATH ?>/obra" style="text-decoration:none; color:inherit;">
			          			<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
			          				<h5>Lugar</h5>
			            			<div class="features-icons-icon d-flex mb-1">
			              				<i class="fa fa-building m-auto fa-2x" aria-hidden="true"></i>
			            			</div>
			            			<h6><b>Fully Responsive</b></h6>
			            			<p class="mb-0">This theme will look great on any device, no matter the size!</p>
			          			</div>
			          			<a/>
			        		</div>
			        		
			        		<div class="col-lg-4">
					        	<a href="<?= PUBLIC_PATH ?>/obra" style="text-decoration:none; color:inherit;">
					        	<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
					            	<h5>Fechas • Horarios</h5>
					            	<div class="features-icons-icon d-flex mb-1">
					             		<i class="fa fa-calendar-times m-auto fa-2x" aria-hidden="true"></i>
					            	</div>
					            	<h6><b>Bootstrap 4 Ready</b></h6>
					            	<p class="mb-0">Featuring the latest build of the new Bootstrap 4 framework!</p>
					          	</div>
					          	</a>
					        </div>
			        		
			        		<div class="col-lg-4">
			          			<a href="<?= PUBLIC_PATH ?>/obra" style="text-decoration:none; color:inherit;">
			          			<div class="features-icons-item mx-auto mb-0 mb-lg-3">
			          				<h5>Costos</h5>
			            			<div class="features-icons-icon d-flex mb-1">
			            				<i class="fa fa-money-bill-alt m-auto fa-2x" aria-hidden="true"></i>
			            			</div>
			            			<h6><b>Easy to Use</b></h6>
			            			<p class="mb-0">Ready to use with your own content, or customize the source files!</p>
			          			</div>
			          			</a>
			        		</div>
			        	</div>
			        </div>    
			    </div>
			    <hr>

			    <div class="row">
		      		<div class="col-md-3">
		      			<img src="<?= PUBLIC_PATH ?>/img/carousel/notfound2.svg" class="img-fluid mb-2">
			        </div>

			        <div class="col-md-9">
			        	<div class="row">
			        		<div class="col-md-12">
			        			<h4><a href="<?= PUBLIC_PATH ?>/obra" style="text-decoration:none; color:inherit;"> TITULO OBRA </a></h4>
			        		</div>
			        	</div>
			        	
			        	<div class="row">
			        		<div class="col-lg-4">
			          			<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
			          				<h5>Lugar</h5>
			            			<div class="features-icons-icon d-flex mb-1">
			              				<i class="fa fa-building m-auto fa-2x" aria-hidden="true"></i>
			            			</div>
			            			<h6><b>Fully Responsive</b></h6>
			            			<p class="mb-0">This theme will look great on any device, no matter the size!</p>
			          			</div>
			        		</div>
			        		
			        		<div class="col-lg-4">
					        	<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
					            	<h5>Fechas • Horarios</h5>
					            	<div class="features-icons-icon d-flex mb-1">
					             		<i class="fa fa-calendar-times m-auto fa-2x" aria-hidden="true"></i>
					            	</div>
					            	<h6><b>Bootstrap 4 Ready</b></h6>
					            	<p class="mb-0">Featuring the latest build of the new Bootstrap 4 framework!</p>
					          	</div>
					        </div>
			        		
			        		<div class="col-lg-4">
			          			<div class="features-icons-item mx-auto mb-0 mb-lg-3">
			          				<h5>Costos</h5>
			            			<div class="features-icons-icon d-flex mb-1">
			            				<i class="fa fa-money-bill-alt m-auto fa-2x" aria-hidden="true"></i>
			            			</div>
			            			<h6><b>Easy to Use</b></h6>
			            			<p class="mb-0">Ready to use with your own content, or customize the source files!</p>
			          			</div>
			        		</div>
			        	</div>
			        </div>    
			    </div>
			    <hr>
		      
		     
		      	
		      
		    <?php foreach ($carteleras as $cartelera): ?>
		      	<div class="row">
		      		<div class="col-md-3">
		      			<a href="<?= PUBLIC_PATH . '/obra?id=' . $cartelera->id_obra ?>">
		      			<img src="<?= PUBLIC_PATH ?>/img/carousel/notfound2.svg" class="img-fluid mb-2">
		      			</a>
			        </div>

			        <div class="col-md-9">
			        	<div class="row">
			        		<div class="col-md-12">
			        		<?php if (!$cartelera->obras->isEmpty()): ?>
			        		<?php foreach ($cartelera->obras as $obra): ?>
			        			<h4>
			        				<a href="<?= PUBLIC_PATH . '/obra?id=' . $obra->id_obra ?>" style="text-decoration:none; color:inherit;"> <?= $obra->nombre . ' - ' . $obra->clasificaciones->nombre;  ?> 
			        				</a>
			        			</h4>
                            <?php endforeach; ?>
                        	<?php endif; ?>
			        		</div>
			        	</div>
			        	
			        	<div class="row">
			        		<div class="col-lg-4">
			          			<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
			          				<h5>Lugar</h5>
			            			<div class="features-icons-icon d-flex mb-1">
			              				<i class="fa fa-building m-auto fa-2x" aria-hidden="true"></i>
			            			</div>
			            			<?php if (!$cartelera->lugares->isEmpty()): ?>
			        				<?php foreach ($cartelera->lugares as $lugar): ?>
			            			<h6><b> <?=  $lugar->nombre; ?></b></h6>
			            			<p class="mb-0"><?=  $lugar->descripcion; ?></p>
			            			<?php endforeach; ?>
                        			<?php endif; ?>
			          			</div>
			        		</div>
			        		
			        		<div class="col-lg-4">
					        	<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
					            	<h5>Fechas • Horarios</h5>
					            	<div class="features-icons-icon d-flex mb-1">
					             		<i class="fa fa-calendar-times m-auto fa-2x" aria-hidden="true"></i>
					            	</div>
					            	<?php if (!$cartelera->fechas->isEmpty()): ?>
			        				<?php foreach ($cartelera->fechas as $fecha): ?>
					            	<h6><b><?=  $fecha->fecha .' ' . $fecha->hora; ?></b></h6>
					            	<p class="mb-0">Featuring the latest build of the new Bootstrap 4 framework!</p>
					            	<?php endforeach; ?>
                        			<?php endif; ?>
					          	</div>
					        </div>
			        		
			        		<div class="col-lg-4">
			          			<div class="features-icons-item mx-auto mb-0 mb-lg-3">
			          				<h5>Costos</h5>
			            			<div class="features-icons-icon d-flex mb-1">
			            				<i class="fa fa-money-bill-alt m-auto fa-2x" aria-hidden="true"></i>
			            			</div>
			            			<h6><b>Easy to Use</b></h6>
			            			<p class="mb-0">Ready to use with your own content, or customize the source files!</p>
			          			</div>
			        		</div>
			        	</div>
			        </div>    
			    </div>
			    <hr>
			  <?php endforeach; ?>
		    </div>
  		</section>
    </div>
</div>
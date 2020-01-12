<?php
 $title = "Nosotros";
?>
<?php include APP_PATH . '/views/partials/head.view.php' ?>
<?php include APP_PATH . '/views/partials/header.view.php' ?>
  
  <div class="container" id="container">
    <div class="card mt-2">
      <div class="card-body">
        <h2 class="mb-5" style="text-align: center;"><strong>Acerca de Nosotros</strong></h2>

        <img id="image" src="<?= PUBLIC_PATH ?>/img/no.jpg" alt="">
        
        <div class="s-content__main text-justify">
            <p class="lead">Grupo Cultural De la Mancha A.C., surgió en verano del 2010 en la Ciudad de Chilpancingo, Guerrero, como una iniciativa para fomentar la lectura y contrarrestar, a través de la cultura y el arte, el panorama de violencia que golpeaba al estado. El grupo se  conformó a partir  del proyecto “Carpa Itinerante de Lectura” que consiste en invadir espacios públicos como plazas, alamedas y parques para formar lectores y a la vez formar públicos para la danza contemporánea, la música académica  y el teatro.</p>

            <p class="res">Se constituyó jurídicamente el 19 de Julio de 2013, iniciando así una estructura organizacional regida por un Consejo Directivo conformado principalmente por : Presidencia, Secretaría y Tesorería, posteriormente se abrieron las comisiones  de acuerdo a las necesidades de la organización. 2014 a la fecha ha realizado giras Estatales y Regionales con temas que se han ido adaptando constantemente a los cambios sociales, políticos y culturales del Estado de Guerrero y México., así como ha tenido a su cargo la producción y operatividad de los festivales y proyectos más importantes del Estado de Guerrero.
            <br>
            Ha realizado también convenios con la Universidad Autónoma de Guerrero, SEP y Secretaría de Cultura del  Estado.
            </p>
        </div>
        
        <div class="s-content__main mb-5">
          <div class="row my-3">
            <div class="col-6 text-justify" id="col6">
              <h3 id="h3-small">MISIÓN</h3>
              <p class="res">Generar alianzas y estrategias con los distintos sectores organizacionales (gubernamentales, privados y no lucrativos) que contribuyan al desarrollo social y político a través de proyectos e iniciativas culturales, donde se involucre a los diversos sectores de a sociedad.
              </p>
            </div>

            <div class="col-12 text-justify" id="col12">
              <h3 id="h3-small">MISIÓN</h3>
              <p class="res">Generar alianzas y estrategias con los distintos sectores organizacionales (gubernamentales, privados y no lucrativos) que contribuyan al desarrollo social y político a través de proyectos e iniciativas culturales, donde se involucre a los diversos sectores de a sociedad.
              </p>
            </div>

            <div class="col-6 text-justify" id="col6">
              <h3 id="h3-small">VISIÓN</h3>
              <p class="res">Posicionarse y consolidarse como empresa cultural, ser de los principales productores y creadores en la escena Nacional e Internacional.
              </p>
            </div>

            <div class="col-12 text-justify my-3" id="col12" >
              <h3 id="h3-small">VISIÓN</h3>
              <p class="res">Posicionarse y consolidarse como empresa cultural, ser de los principales productores y creadores en la escena Nacional e Internacional.
              </p>
            </div>
          </div>
        
          <div class="row my-3">
            <div class="col-6 text-justify" id="col6">
              <h3 id="h3-small">POLITICAS</h3>
                <ul>
                  <li>No utilizar el nombre de la asociación con fines partidistas o electorales.</li>
                  <li>Ser una asociación socialmente responsable.</li>
                </ul>  
            </div>

            <div class="col-12 text-justify" id="col12">
              <h3 id="h3-small">POLITICAS</h3>
                <ul>
                  <li>No utilizar el nombre de la asociación con fines partidistas o electorales.</li>
                  <li>Ser una asociación socialmente responsable.</li>
                </ul>  
            </div>

            <div class="col-6 text-justify" id="col6">
              <h3 id="h3-small">¿QUÉ OFRECEMOS?</h3>
              <div id="accordion">
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#collapseTeatro">
                      Teatro y Música
                    </a>
                  </div>
                  <div id="collapseTeatro" class="collapse" data-parent="#accordion">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseProduc">
                      Producciones de festivales y eventos culturales
                    </a>
                  </div>
                  <div id="collapseProduc" class="collapse" data-parent="#accordion">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseCapaci">
                      Capacitación artística
                    </a>
                  </div>
                  <div id="collapseCapaci" class="collapse" data-parent="#accordion">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseMaster">
                      Masterización de discos
                    </a>
                  </div>
                  <div id="collapseMaster" class="collapse" data-parent="#accordion">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseRenta">
                      Renta de audio e iluminación
                    </a>
                  </div>
                  <div id="collapseRenta" class="collapse" data-parent="#accordion">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-12 text-justify my-3" id="col12">
              <h3 id="h3-small">¿QUÉ OFRECEMOS?</h3>
              <div id="accordion12">
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#collapseTeatro">
                      Teatro y Música
                    </a>
                  </div>
                  <div id="collapseTeatro" class="collapse" data-parent="#accordion12">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseProduc">
                      Producciones de festivales y eventos culturales
                    </a>
                  </div>
                  <div id="collapseProduc" class="collapse" data-parent="#accordion12">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseCapaci">
                      Capacitación artística
                    </a>
                  </div>
                  <div id="collapseCapaci" class="collapse" data-parent="#accordion12">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseMaster">
                      Masterización de discos
                    </a>
                  </div>
                  <div id="collapseMaster" class="collapse" data-parent="#accordion12">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseRenta">
                      Renta de audio e iluminación
                    </a>
                  </div>
                  <div id="collapseRenta" class="collapse" data-parent="#accordion12">
                    <div class="card-body" id="card-bodyAcor">
                      Lorem ipsum..
                    </div>
                  </div>
                </div>

                <div class="card">
                    <div class="card-header">
                      <a class="card-link"  data-toggle="collapse" href="#collapseTaller">
                        Talleres
                      </a>
                    </div>
                    <div id="collapseTaller" class="collapse" data-parent="#accordion12">
                      <div class="card-body" id="card-bodyAcor">
                        <ul>
                          <li>Teatro</li>
                          <li>Danza</li>
                          <li>Música</li>
                          <li>Alebrijes y cartonería</li>
                          <li>Dibujo</li>
                          <li>Serigrafía</li>
                          <li>Lectura o cuenta cuentos</li>
                          <li>Juegos tradicionales</li>
                        </ul>
                      </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseTeatroIn">
                        Teatro Infantil
                      </a>
                    </div>
                    <div id="collapseTeatroIn" class="collapse" data-parent="#accordion12">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                          <li>Cuenta Cuentos</li>
                          <li>Gira, gira Nicolas</li>
                          <li>Una mancha más al tigre</li>
                        </ul>
                      </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseAdolen">
                        Adolecentes y Adultos
                      </a>
                    </div>
                    <div id="collapseAdolen" class="collapse" data-parent="#accordion12">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                          <li>Un mundo al revés</li>
                          <li>Los Perros</li>
                          <li>1970 y la noche del Porvenir</li>
                          <li>Fractales</li>
                        </ul>
                      </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseLogros">
                        Logros
                      </a>
                    </div>
                    <div id="collapseLogros" class="collapse" data-parent="#accordion12">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                         <li>Gira por el Estado de Guerrero 2014-2015</li>
                          <li>Producción del Festival Chilpancingo en Mío 2014-2015</li>
                          <li>Muestra Estatal de teatro 2016 (Gira regional)</li>
                          <li>Programa de Teatro Escolar 2017</li>
                          <li>Muestra Estatal de Teatro 2018 (Gira regional)</li>
                          <li>Becarios de Muestra Nacional 2014 y 2017</li>
                          <li>Becarios PECDAG</li>
                          <li>Becarios PACMYC</li>
                          <li>Producción de Semana Altamiranista</li>
                          <li>Producción de Jornadas Alarconianas 2017 - 2018</li>
                          <li>Producción de Festival Afromexicano 2018</li>
                          <li>Producción de Primer Encuentro PACMYC 2018 Guerrero</li>
                        </ul>
                      </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseConvenios">
                        Convenios
                      </a>
                    </div>
                    <div id="collapseConvenios" class="collapse" data-parent="#accordion12">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                         <li>Servicio Social de la UAGro.</li>
                          <li>Maestría en Comunicación Estratégica y Relaciones Públicas.</li>
                        </ul>
                      </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseWork">
                        Trabajo con las instituciones
                      </a>
                    </div>
                    <div id="collapseWork" class="collapse" data-parent="#accordion12">
                      <div class="card-body" id="card-bodyAcor">
                        <ul>
                          <li>Secretaría de Educación Pública de Guerrero</li>
                          <li>Secretaría de Cultura del Estado de Guerrero</li>
                          <li>Delegación de Culturas Populares</li>
                          <li>Secretaría de la Mujer del Estado de Guerrero</li>
                          <li>Instituciones privadas</li>
                        </ul>
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row my-4">
            <div class="col-6 text-justify" id="col6">
              <div id="accordion1">
                  <div class="card">
                    <div class="card-header">
                      <a class="card-link"  data-toggle="collapse" href="#collapseTaller">
                        Talleres
                      </a>
                    </div>
                    <div id="collapseTaller" class="collapse" data-parent="#accordion1">
                      <div class="card-body" id="card-bodyAcor">
                        <ul>
                          <li>Teatro</li>
                          <li>Danza</li>
                          <li>Música</li>
                          <li>Alebrijes y cartonería</li>
                          <li>Dibujo</li>
                          <li>Serigrafía</li>
                          <li>Lectura o cuenta cuentos</li>
                          <li>Juegos tradicionales</li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseTeatroIn">
                        Teatro Infantil
                      </a>
                    </div>
                    <div id="collapseTeatroIn" class="collapse" data-parent="#accordion1">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                          <li>Cuenta Cuentos</li>
                          <li>Gira, gira Nicolas</li>
                          <li>Una mancha más al tigre</li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseAdolen">
                        Adolecentes y Adultos
                      </a>
                    </div>
                    <div id="collapseAdolen" class="collapse" data-parent="#accordion1">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                          <li>Un mundo al revés</li>
                          <li>Los Perros</li>
                          <li>1970 y la noche del Porvenir</li>
                          <li>Fractales</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
            </div>

            <div class="col-6 text-justify" id="col6">
              <div id="accordion2">
                  <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseLogros">
                        Logros
                      </a>
                    </div>
                    <div id="collapseLogros" class="collapse" data-parent="#accordion2">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                         <li>Gira por el Estado de Guerrero 2014-2015</li>
                          <li>Producción del Festival Chilpancingo en Mío 2014-2015</li>
                          <li>Muestra Estatal de teatro 2016 (Gira regional)</li>
                          <li>Programa de Teatro Escolar 2017</li>
                          <li>Muestra Estatal de Teatro 2018 (Gira regional)</li>
                          <li>Becarios de Muestra Nacional 2014 y 2017</li>
                          <li>Becarios PECDAG</li>
                          <li>Becarios PACMYC</li>
                          <li>Producción de Semana Altamiranista</li>
                          <li>Producción de Jornadas Alarconianas 2017 - 2018</li>
                          <li>Producción de Festival Afromexicano 2018</li>
                          <li>Producción de Primer Encuentro PACMYC 2018 Guerrero</li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseConvenios">
                        Convenios
                      </a>
                    </div>
                    <div id="collapseConvenios" class="collapse" data-parent="#accordion2">
                      <div class="card-body" id="card-bodyAcor">
                         <ul>
                            <li>Servicio Social de la UAGro.</li>
                            <li>Maestría en Comunicación Estratégica y Relaciones Públicas.</li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header">
                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseWork">
                        Trabajo con las instituciones
                      </a>
                    </div>
                    <div id="collapseWork" class="collapse" data-parent="#accordion2">
                      <div class="card-body" id="card-bodyAcor">
                        <ul>
                          <li>Secretaría de Educación Pública de Guerrero</li>
                          <li>Secretaría de Cultura del Estado de Guerrero</li>
                          <li>Delegación de Culturas Populares</li>
                          <li>Secretaría de la Mujer del Estado de Guerrero</li>
                          <li>Instituciones privadas</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>     
        </div>

        <?php include APP_PATH . '/views/pages/partials/team_list.view.php' ?>

      </div>
    </div>
  </div>
<?php include APP_PATH . '/views/partials/foot.view.php' ?>
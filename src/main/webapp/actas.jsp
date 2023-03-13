<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es"> 
    <head>
        <title>ONPE - Oficina Nacional de Procesos Electorales</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  /> 
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
        <meta name="keywords" content="onpe, " />
        <meta name="description"  content="" />
		 
		<link href="css/style.css" 		 rel="stylesheet" type="text/css" media="screen"/>
		
        <link href="css/media_print.css" rel="stylesheet" type="text/css"/ media="print">
		 
        <script language="javascript" type="text/javascript" src="js/includes.js"></script>
		<script language="javascript" type="text/javascript" src="js/jquery/1.11.3/jquery.min.js"></script>
		<script language="javascript" type="text/javascript" src="js/bootstrap.js"></script>
		<script language="javascript" type="text/javascript" src="js/ajax.js"></script>
        <script language="javascript" type="text/javascript" src="js/funciones.js"></script>
        <script language="javascript" type="text/javascript" src="js/resultados.js"></script>
        <script language="javascript" type="text/javascript" src="js/actas.js"></script>		
		
		
		
    </head>
<body>
	<header>
    	<div class="container">
	<div class="pull-left logo-onpe">
		<div class="pull-left"><a href="http://www.onpe.gob.pe/" target="_blank"><img src="images/onpe-trans.png"></a></div>
		
		<div class="pull-left">
			<h1>PRESENTACI�N DE RESULTADOS</h1>
		</div>
	</div>

	
	<div class="pull-right logo">
		<img src="images/eegg2016-trans.png" width="218" height="35">
	</div>

</div>
    </header>
	<div class="container">

            <img src="images/fnd-actas.jpg" width="1170" height="248" class="img-responsive mg30top">

            <section class="menu navbar-default menu05">
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
				<a name="posicion"></a>
                <nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
                    <ul class="nav navbar-nav">
                        <li class="bt-azul">
                            <a href="./Resumen-GeneralPresidencial.html">PRESIDENCIAL</a>
                        </li>
                        <li class="bt-amarillo act-amarillo">
                            <a href="./Actas-por-Ubigeo.html">ACTAS</a>
                        </li>
                        <li class="bt-rojo">
                            <a href="./Participacion-ciudadana-Total-Todos-Pie.html">PARTICIPACI�N CIUDADANA</a>
                        </li>
                    </ul>
                </nav>
            </section>

            <section class="contenedor">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-interna">
                            <ul>
                                <li><a href="./Actas-por-Ubigeo.html">Actas por ubigeo</a></li>
                                <li><a href="./Actas-por-numero.html" class="act-izq">Actas por n�mero</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-9" id="impreso">
                        <div class="contenido-interna">
                            <div class="titulos col-xs-12">
                                <div class="col-xs-11">
                                    <h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCI�N PRESIDENCIAL 2016: ACTAS POR N�MERO</h3>
                                </div>

                                <div class="col-xs-1 oculto-boton-print">
                                    <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                                </div>
                            </div>

                            <div class="col-xs-12">
							
                                	<div class="col-lg-7 centered">
		<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
			<div class="col-xs-3 col-md-1">
				<span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
			</div>

			<div class="col-xs-9 col-md-11">
				<ul>
					<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h </li>
				</ul>
			</div>
		</div>
	</div>


                                <div id="page-wrap">
								<br>
								<p>&nbsp;</p>
								<p>&nbsp;</p>
								    <form id="myform" name="myform" class="horizontal-form" method="post" action="javascript:actas_bscarPrNmroMesa(document.getElementById('myform'));">
											<div class="col-md-3">
												INGRESE EL N�MERO DE ACTA:
											</div>

											<div class="col-md-4">
												<div class="form-group">
													<span id="spanNroMesa">
														<input id="nroMesa" name="nroMesa" type="text" onKeyPress="return validText(this, event, 4)" maxlength="6" class="form-control" value=""/>
													</span>
												</div>
											</div>

											<div class="col-md-2">
												<button type="button" 
												onclick="javascript:actas_bscarPrNmroMesa(document.getElementById('myform'));"
												class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> BUSCAR</button>
											</div>
										
									</form>
                                </div>
								<div id="divDetalle" class="ptop20">
								</div>
                            </div>

                        </div>
                    </div>
			    </div>
		    </section>
    </div>
	
	<script>
	IrPosicionPagina();
	</script>
	
    <footer class="footer-inside">
    <div class="container ">
	<div class="row">
	   <div class="col-md-12 direc01">
		   <span>CONT�CTENOS</span>
		   <p>Jr. Washington 1894, Cercado de Lima </p>
		   <p>Correo electr�nico: <a href="mailto:informes@onpe.gob.pe">informes@onpe.gob.pe</a></p>
		   <p>Central Telef�nica: 417 - 0630 / Lunes a Viernes 08:30 - 16:30 hrs</p>
	   </div>
	</div>
</div>

    </footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% String id = (String) session.getAttribute("id");
String[][] data = (String[][]) session.getAttribute("data"); %>

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
	<%@include file="WEB-INF/header.jsp" %>
	
	
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
                            <a href="svlActasUbigeo">ACTAS</a>
                        </li>
                        <li class="bt-rojo">
                            <a href="svlParticipacion">PARTICIPACI�N CIUDADANA</a>
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
                                <li><a href="ActasNum.jsp" class="act-izq">Actas por n�mero</a></li>
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
											
											
									<% if (id == null && data == null) { %>

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
									<% } %>
										
										
									</form>
                                </div>
								<div id="divDetalle" class="ptop20">
								
								
								<div class="contenido-resultados">
            		<p>&nbsp;</p>
		<div class="row">
			<div class="tab-info">
				<div class="tab-content">
					<div id="detMesa">
							<div class="tab-content">
	<div role="tabpanel" class="tab-pane active" id="presidencial">
		<div class="tab-info-desc">
			<div class="row">
				<div class="col-xs-3 col-md-4">
					<div class="mesap01">
					<img src="images/mp-sin.jpg" class="img-responsive"> 
					Si requiere la imagen del acta, solic�tela a trav�s del procedimiento de acceso a la informaci�n p�blica. </div>
				</div>
				<div class="col-xs-9 col-md-8">
					<div class="row">
						<div class="col-xs-12">
							<p class="subtitle1">ACTA ELECTORAL</p>
							<div id="page-wrap">
								<table class="table13" cellspacing="0">
									<thead>
										<tr>
											<th>Mesa N�</th>
											<th>N� Copia</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>042311</td>
											<td> 91G </td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="col-xs-12">
							<p class="subtitle1">INFORMACI�N UBIGEO</p>
							<div id="page-wrap">
								<table class="table14" cellspacing="0">
									<tbody>
										<tr class="titulo_tabla">
											<td>Departamento</td>
											<td>Provincia</td>
											<td>Distrito</td>
											<td>Local de votaci�n</td>
											<td>Direcci�n</td>
										</tr>
										<tr>
											<td>LIMA</td>
											<td>LIMA</td>
											<td>SANTIAGO DE SURCO</td>
											<td>IE 7068 ABRAHAM ROLDAN POMA- INICIAL</td>
											<td>CALLE TAMBO COLORADO N� 125</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="col-xs-12">
							<p class="subtitle1">INFORMACI�N MESA</p>
							<div id="page-wrap">
								<table class="table15" cellspacing="0">
									<tbody>
										<tr class="titulo_tabla">
											<td>Electores h�biles</td>
											<td>Total votantes</td>
											<td>Estado del acta</td>
										</tr>
										<tr>
											<td>343</td>
											<td>265</td>
											<td>ACTA ELECTORAL NORMAL</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div>
				<div class="col-xs-12 pbot30_acta">
					<p class="subtitle1">LISTA DE RESOLUCIONES</p>
											<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> No hay resoluciones para el acta seleccionada
										<div id="page-wrap">
						<div class="col-md-12 resolu">
													</div>
					</div>
				<!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
				</div>

			</div>

			<div>
				<div class="col-xs-12">
					<p class="subtitle1">INFORMACI�N DEL ACTA ELECTORAL</p>
					<div id="page-wrap" class="cont-tabla1">
						<table class="table06">
							<tbody>
							<tr class="titulo_tabla">
								<td colspan="2">Organizaci�n pol�tica</td>
								<td>Total de Votos</td>
							</tr>
																																																							<tr>
									<td>PERUANOS POR EL KAMBIO</td>
									<td><img width="40px" height="40px" src="images/simbolos/00000114.jpg"></td>
									<td>130</td>
								</tr>		<tr>
									<td>FUERZA POPULAR</td>
									<td><img width="40px" height="40px" src="images/simbolos/00000106.jpg"></td>
									<td>114</td></tr>
								<tr>
									<td colspan="2">VOTOS EN BLANCO</td>
									<td>0</td>
								</tr>
								<tr>
									<td colspan="2">VOTOS NULOS
								</td>
								<td>
								  21
						     	</td>
								</tr>
								<tr>
									<td colspan="2">VOTOS IMPUGNADOS</td>
	        					<td>									
								</td>
								</tr>
								<tr>
									<td colspan="2">TOTAL DE  VOTOS EMITIDOS</td>
									<td>
										 265 
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
							</div>

		</div>
	</div>
</div>				


		

					</div>
				</div>
			</div>
		</div>
    	
</div>								
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
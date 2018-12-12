<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kardex.aspx.cs" Inherits="TrayectoriaWeb.alumnos.kardex" %>

<!DOCTYPE html>
<html lang="es_MX">
  <head>
    <base href="/">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>Sistema de Trayectoria Escolar</title>

 <!-- Styles -->
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/2.2.0/css/responsive.dataTables.min.css" rel="stylesheet">
    <link href="../../assets/css/core.min.css" rel="stylesheet">
    <link href="../../assets/css/app.css" rel="stylesheet">
    <link href="../../assets/css/style.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="../../assets/img/favicon.png">
    <link rel="icon" href="../../assets/img/favicon.png">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.0/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
      
      <style>
          .card-columns {
              @include media-breakpoint-only(lg) {
                column-count: 4;
              }
              @include media-breakpoint-only(xl) {
                column-count: 5;
              }
            }
      </style>
     
  </head>

  <body data-provide="pace">

    <!-- Preloader -->
    <div class="preloader">
      <div class="spinner-dots">
        <span class="dot1"></span>
        <span class="dot2"></span>
        <span class="dot3"></span>
      </div>
    </div> 
 
 <!-- Sidebar -->
    <aside class="sidebar sidebar-expand-lg sidebar-light sidebar-sm sidebar-color-info">

      <header class="sidebar-header bg-white">
        <span class="logo">
          <a href="#"><img src="../../assets/img/logo-light.png" alt="logo"></a>
        </span>
        <span class="sidebar-toggle-fold "></span>
      </header>

      <nav class="sidebar-navigation bg-info">
        <ul class="menu menu-sm menu-bordery">

          <li class="menu-item">
            <a class="menu-link" href="/">
              <span class="icon ti-home"></span>
              <span class="title">Inicio</span>
            </a>
          </li>

          <li class="menu-item active">
            <a class="menu-link" href="../../../../alumnos/">
              <span class="icon ti-user"></span>
              <span class="title">Alumnos</span>
            </a> 
          </li>   
          <li class="menu-item">
            <a class="menu-link" href="#">
              <span class="icon ti-pie-chart"></span>
              <span class="title">Reportes</span>
            </a>
              <ul class="menu-submenu" >
              <li class="menu-item ">
                <a class="menu-link" href="reportes/Default.aspx">
                  <span class="dot"></span>
                  <span class="title">Indices de Ingreso</span>
                </a>
              </li>
              <li class="menu-item">
                <a class="menu-link" href="reportes/Desercion.aspx">
                  <span class="dot"></span>
                  <span class="title">Indices de Desercion</span>
                </a>
              </li>
                  <li class="menu-item">
                <a class="menu-link" href="reportes/Eficiencias.aspx">
                  <span class="dot"></span>
                  <span class="title">Eficiencia de titulacion</span>
                </a>
              </li>
            </ul>
          </li>        


        </ul>
      </nav>

    </aside>

    <!-- Topbar -->
    <header class="topbar">
      <div class="topbar-left">
        <span class="topbar-btn sidebar-toggler "><i>&#9776;</i></span>
        

        <ul class="topbar-btns">
          
        </ul>
      </div>

      <div class="topbar-right">

        <ul class="topbar-btns">
          <li class="dropdown">
            Usuario
            <span class="topbar-btn" data-toggle="dropdown"><img class="avatar" src="../../../../../../assets/img/default.jpg" alt="..."></span>
            
            <div class="dropdown-menu dropdown-menu-right">
             <a class="dropdown-item" href="../../../logout/"><i class="ti-power-off"></i> Salir</a>
            </div>
          </li>
        </ul>

      </div>
    </header>
    <!-- END Topbar -->

    <!-- Main container -->
    <main>

      <div class="main-content">
       <form id="formPrincipal" runat=server>
           <div class="row">
              <div class="col-md-12">
                    <h1>Trayectoria del Alumno <%= Request.QueryString["cuenta"] %></h1>
                   
        </div>
            <div class="card" >
            <!-- Ingreso por grupo y sexo -->
                <div class="card">   
                        <div class="card-body"> 
                            <asp:Repeater ID="kardexAlumno" runat="server" DataSourceID="SqlDataSource1">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>id</th>
                                                           
															<th>folio</th>
                                                            <th>Periodo</th>
                                                            <th>Materia</th>
                                                            <th>Maestro</th>
                                                            <th>Calificacion</th>
                                                            <th>Tipo</th>
                                                            <th>Carrera</th>
                                                            <th>Cohorte</th>
                                                            <th>fecha</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("id_calificacion") %></td>
															
                                                            <td><%# Eval("folio") %></td>
                                                             <td><%# Eval("periodo") %></td>
                                                            <td><%# Eval("NombreMateria") %></td>
                                                             <td><%# Eval("nombre_maestro") %></td>
                                                            <td><%# Eval("calificacion") %></td>
                                                            <td><%# Eval("tipo") %></td>
                                                            <td><%# Eval("NombreCarrera") %></td>
                                                            <td><%# Eval("cohorte") %></td>
                                                            <td><%# Eval("fecha", "{0:dd/MM/yyyy}") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>  
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT * FROM kardex WHERE cuenta = @cuenta ORDER BY periodo, NombreMateria">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="cuenta" DefaultValue="0" Name="cuenta"></asp:QueryStringParameter>
                      </SelectParameters>
                  </asp:SqlDataSource> 
                        </div> 
                </div>
              </div>

       </form>
		   <div class="fab fab-fixed">
      <a class="btn btn-float btn-info" href="#" title="Agregar Calificacion" data-toggle="modal" data-target="#modal_nueva"><i class="ti-plus"></i></a>
    </div>


		  <div class="modal modal-right fade" id="modal_nueva" tabindex="-1">
<!--<div class="modal fade" id="modal_remi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">-->

       <div class="modal-dialog" role="document">

         <div class="modal-content">
          <!--header del modal -->
           <div class="modal-header bg-info">

             <h5 class="modal-title text-secondary" id="exampleModalLabel">Registrar Nueva Calificación</h5>
             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">×</span>
             </button>
           </div><!-- cierra header modal-->

           <!-- abre body del modal -->
           <div class="modal-body">

             <h5>Información Personal</h5>
             <div class="form-group">
                 <label for="no_cuenta" class="form-control-label">Folio:</label>
                 <input type="text" class="form-control" id="txt_folio" name="txt_folio" required>
                 <small>Ingrese el folio que aparece en el acta</small>
             </div>
			 <div class="form-group">
                 <label for="no_cuenta" class="form-control-label">Número de Cuenta:</label>
                 <input type="text" class="form-control" id="txt_cuenta" name="txt_cuenta" required>
             </div>
			   <div class="form-group">
                 <label for="no_cuenta" class="form-control-label">Nombre:</label>
                 <input type="text" class="form-control" id="txt_nombre" name="txt_nombre" required>
             </div>
             <div class="form-group">
                 <label for="periodo" class="form-control-label">Calificacion:</label>
                  <select class="form-control" id="txt_cal" name="txt_cal">
					<option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
					<option value="10">10</option>
                  </select>  
             </div>
           </div> <!-- cierra el body del modal -->
           <!-- abre el footer del modal -->
           <div class="modal-footer">
             <button type="button" class="btn btn-secondary" id="btn_cancelar_reg" data-dismiss="modal">Cancelar</button>
             <button type="button" class="btn btn-primary" id="btn_guardar">Guardar</button>
             
           </div>
           <!-- cierra el footer del modal -->

         </div> <!-- cierra modal content -->
       
       </div> <!-- cierra modal dialog -->
     
     </div> <!--cierra modal --> 

      </div><!--/.main-content -->
        


           <!-- Footer -->
      <footer class="site-footer">
        <div class="row">
          <div class="col">
            <p class="text-center text-md-left">Copyright 2017 .       </div>
            </div>
          </footer>
    </main>
    <!-- END Main container -->
	  <script type="text/javascript">
		$(document).ready(function() {
			$('#btn_guardar').click(function () {
				var formData= {
				  folio: $('#txt_folio').val(),
				  cuenta: $('#txt_cuenta').val(),
				  nombre: $('#txt_nombre').val(),
				  calificacion: $('#txt_cal').val()
				  };
				$.ajax({
					type: "POST", 
					contentType: "application/json",
					url: 'http://localhost:62941/InsertarCalificaciones.asmx/Insert',
					data: formData,
					dataType: "json",
					success: function (result) {
						$('#btn_cancelar_reg').trigger('click');
						app.toast(result.d);
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) { 
						alert("Status: " + textStatus); alert("Error: " + errorThrown); 
					}  
				});
		  });
		});
	</script>
      
        <!-- Scripts -->
    <script src="assets/js/core.min.js"></script>
    <script src="assets/js/app.js"></script>
<script>
//asignar el menu activo a la pestana actual
    $(document).ready(function () {
        alert('jqueryok!');
        });
</script>
  </body>
</html>



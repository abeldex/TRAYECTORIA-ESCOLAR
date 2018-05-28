<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrayectoriaWeb.empleadores.Default" %>

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
 
    <!-- Sidebar 
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

          <li class="menu-item active open">
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
              <li class="menu-item active">
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
            </ul>
          </li>        


        </ul>
      </nav>

    </aside>-->
    <!-- END Sidebar -->

    <!-- Topbar
    <header class="topbar">
      <div class="topbar-left">
        <span class="topbar-btn sidebar-toggler "><i>&#9776;</i></span>
        

        <ul class="topbar-btns">
          
        </ul>
      </div>

      <div class="topbar-right">

        <ul class="topbar-btns">
          <li class="dropdown">
          <span class="topbar-btn" data-toggle="dropdown"><img class="avatar" src="../../../../../../assets/img/default.jpg" alt="..."></span>
          </li>
        </ul>

      </div>
    </header> -->
    <!-- END Topbar -->

    <!-- Main container -->
    <main>

      <div class="main-content">
       <form id="formPrincipal" runat=server>
           <div class="row">
              <div class="col-md-12">
                  <center><h2>FORO CONSULTIVO Y DE VINCULACIÓN DE CIENCIAS DE LA TIERRA Y EL ESPACIO </h2>
                    <h3>Registro de Empleadores</h3>
                   </center>
                </div>
                <hr />
        </div>
    
            <div class="card" id="i_reportes">
            <!-- Ingreso por grupo y sexo -->
                <div class="card">   
                        <div class="card-body"> 
                            <asp:Repeater ID="RepeaterEmpleadores" runat="server" DataSourceID="SqlDataSource1">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Nombre</th>
															<th>Categoria</th>   
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("empresa_empleador") %></td>
															<td><%# Eval("categoria_empleador") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>  
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT DISTINCT(empresa_empleador) as empresa_empleador, categoria_empleador  FROM Empleadores order by categoria_empleador">
                  </asp:SqlDataSource> 
                        </div> 
                </div>
              </div>
       
       </form>


      </div><!--/.main-content -->
        


           <!-- Footer -->
      <footer class="site-footer">
        <div class="row">
          <div class="col">
            <p class="text-center text-md-left">Copyright 2018 .       </div>
            </div>
          </footer>
    </main>
    <!-- END Main container -->
      <script type="text/javascript">
          
          $("#btnBuscar").click(function () {
              var select = document.getElementById("carrera");
              var carrera = select.options[select.selectedIndex].value;
              var dropdown = document.getElementById("cohortes");
              var cohortes = dropdown.options[dropdown.selectedIndex].value;
              var QueryString = "alumnos/Default.aspx?carrera=" + carrera + "&cohortes=" + cohortes;
              //$("#i_reportes").load(QueryString +" #i_reportes > *");              
              //app.toast("Cohorte: " + cohortes + " y Carrera: " + select.options[select.selectedIndex].innerHTML + " cargados");
              //alert("Cohorte: " + cohortes + " cargada");
              app.modaler({
                  html: '¿Desea consultar la carrera ' + select.options[select.selectedIndex].innerHTML + ' de la Cohorte: ' + cohortes + '?',
                  type: 'center',
                  title: 'Confirmar',
                  cancelVisible: true,

                  onConfirm: function (modal) {
                      //cargamos el div
                      $("#i_reportes").load(QueryString + " #i_reportes > *");
                      $("#lblcarrera").html(select.options[select.selectedIndex].innerHTML);
                      $("#lblcohorte").html(cohortes);
                      app.toast("Cohorte: " + cohortes + " y Carrera: " + select.options[select.selectedIndex].innerHTML + " cargado correctamente");
                  },

                  onCancel: function (modal) {
                      app.toast('Cancelo la consulta!');
                  }
              });
              
          });
          
      </script>
      
        <!-- Scripts -->
    <script src="assets/js/core.min.js"></script>
    <script src="assets/js/app.js"></script>

  </body>
</html>



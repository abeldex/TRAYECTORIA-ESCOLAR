<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eficiencias.aspx.cs" Inherits="TrayectoriaWeb.reportes.Eficiencias" %>

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
      
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

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

          <li class="menu-item">
            <a class="menu-link" href="../../../../alumnos/">
              <span class="icon ti-user"></span>
              <span class="title">Alumnos</span>
            </a> 
          </li>   
          <li class="menu-item active open">
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
    <!-- END Sidebar -->

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
              <a class="dropdown-item" href="#"><i class="ti-power-off"></i> Salir</a>
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
                    <h1>Reportes de indices de Deserción, Rezago y Reprobación</h1>
                   Consultando: <label id="lblcarrera"></label> - <label id="lblcohorte"></label>
                </div>
               <div class="col-md-3">
                <select name="carrera" id="carrera" class="form-control" >
                        <option value="1">Geodesia</option>
                        <option value="2">Geomática</option>
                        <option value="3">Astronomia</option>
                </select>
               </div>
               <div class="col-md-3">
                    <asp:DropDownList CssClass="form-control" ID="cohortes" runat="server" DataSourceID="SqlDataSourceCohortes" DataTextField="Cohorte" DataValueField="Cohorte"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceCohortes" runat="server" ConnectionString="<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>" SelectCommand="SELECT DISTINCT Cohorte FROM Alumno"></asp:SqlDataSource>
               </div>
                <div  class="col-md-3">
                   <a href="#" class="btn btn-success" id="btnBuscar">Consultar</a>
                    <!--<a href="#" class="btn btn-warning" id="btnImprimir">Imprimir</a>-->
                </div>
                <hr />
            
           </div>
        <div class="card-columns" id="i_reportes">
            <!-- Reporte Desercion -->
                 <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Eficiencia de Titulacion</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="DesercionxGrupo" runat="server" DataSourceID="SqlDataSource1">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Total Alumnos</th>
															<th>Titulados</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("Total") %></td>
															<td><%# Eval("Titulados") %></td>

												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
                                                          <script type="text/javascript">
                                                        // Load google charts
                                                        google.charts.load('current', {'packages':['corechart']});
                                                        google.charts.setOnLoadCallback(drawChart);

                                                        // Draw the chart and set the chart values
                                                        function drawChart() {
                                                          var data = google.visualization.arrayToDataTable([
                                                          ['Total', 'Titualdos'],
                                                          [<%# Eval("Total") %>,<%# Eval("Titulados") %>]
                                                        ]);

                                                          // Optional; add a title and set the width and height of the chart
                                                          var options = {'title':'Eficiencia de Titulacion', 'width':550, 'height':400};

                                                          // Display the chart inside the <div> element with id="piechart"
                                                          var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                                                          chart.draw(data, options);
                                                        }
                                                        </script>

												</FooterTemplate>
										</asp:Repeater>

                      <div id="piechart"></div>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(Alumno.numCuenta) as Total, (SELECT COUNT(Alumno.numCuenta) as titulados FROM Alumno WHERE Cohorte = @cohorte and Titulado = 'Si' and idCarrera = @carrera) as Titulados from Alumno WHERE Cohorte = @cohorte and idCarrera = @carrera">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 1 -->
            

             </div>
        </form>
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

          
          $("#btnBuscar").click(function () {
              var select = document.getElementById("carrera");
              var carrera = select.options[select.selectedIndex].value;
              var dropdown = document.getElementById("cohortes");
              var cohortes = dropdown.options[dropdown.selectedIndex].value;
              var QueryString = "reportes/Eficiencias.aspx?carrera=" + carrera + "&cohortes=" + cohortes;
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
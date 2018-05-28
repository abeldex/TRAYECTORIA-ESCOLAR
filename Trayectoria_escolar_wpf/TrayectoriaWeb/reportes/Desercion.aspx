<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Desercion.aspx.cs" Inherits="TrayectoriaWeb.reportes.Desercion" %>

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
                <h5 class="card-title text-white"><b>Indice de deserción por Carrera, Grupo y Sexo</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="DesercionxGrupo" runat="server" DataSourceID="SqlDataSource1">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>No. Cuenta</th>
															<th>Alumno</th>
                                                            <th>Grupo</th>
                                                             <th>Sexo</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("numCuenta") %></td>
															<td><%# Eval("NombreAlumno") %></td>
                                                            <td><%# Eval("idGrupo") %></td>
                                                            <td><%# Eval("Sexo") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT numCuenta, NombreAlumno, idGrupo, cohorte,

CASE 
WHEN CarreraIngreso = 1 THEN 'Geodesia' 
WHEN CarreraIngreso = 2 THEN 'Geomatica'
WHEN CarreraIngreso = 3 THEN 'Astronomia'
ELSE '-' END AS carrera ,
                      Sexo 

From Alumno Where (desertor = 1 or baja = 1) and Cohorte = @cohorte and CarreraIngreso = @carrera order  by idGrupo asc">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 1 -->
             <!-- Reporte Desercion -->
                 <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Indice de Rezago por Carrera, Grupo y Sexo</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="RezagoxGrupo" runat="server" DataSourceID="SqlDataSource2">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>No. Cuenta</th>
															<th>Alumno</th>
                                                            <th>Grupo</th>
                                                             <th>Sexo</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("numCuenta") %></td>
															<td><%# Eval("NombreAlumno") %></td>
                                                            <td><%# Eval("idGrupo") %></td>
                                                            <td><%# Eval("Sexo") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT numCuenta, NombreAlumno, idGrupo, cohorte,

CASE 
WHEN CarreraIngreso = 1 THEN 'Geodesia' 
WHEN CarreraIngreso = 2 THEN 'Geomatica'
WHEN CarreraIngreso = 3 THEN 'Astronomia'
ELSE '-' END AS carrera ,
                      Sexo 

From Alumno Where (rezagado = 1) and Cohorte = @cohorte and CarreraIngreso = @carrera order  by idGrupo asc">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 2 -->
            <!-- Reporte reprobados asignaturas ordis -->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Asignaturas con mayor índice de reprobación al cierre de ordinarios</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="IndiceReprobacionOrdinarios" runat="server" DataSourceID="SqlDataSource3">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Asignatura</th>
															<th>Reprobados</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("NombreMateria") %></td>
															<td><%# Eval("Cantidad") %></td>    
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT TOP 10 Materias.NombreMateria, count(*) as 'Cantidad' from ReprobadosFoliosOrdinarios
inner join Materias on ReprobadosFoliosOrdinarios.materia = Materias.idMateria
WHERE cohorte = @cohorte
GROUP BY Materias.NombreMateria order by cantidad desc">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 2 -->
                        <!-- Reporte reprobados asignaturas comp -->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Asignaturas con mayor índice de reprobación al cierre de actas complementarias</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource4">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Asignatura</th>
															<th>Reprobados</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("NombreMateria") %></td>
															<td><%# Eval("Cantidad") %></td>    
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT Materias.NombreMateria, count(*) as 'Cantidad' from ReprobadosFoliosComplementarios
inner join Materias on ReprobadosFoliosComplementarios.materia = Materias.idMateria
WHERE cohorte = @cohorte
GROUP BY Materias.NombreMateria">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 2 -->
             <!-- Reporte reprobados asignaturas extras -->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Asignaturas con mayor índice de reprobación al cierre de extraordinarios</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource6">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Asignatura</th>
															<th>Reprobados</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("NombreMateria") %></td>
															<td><%# Eval("Cantidad") %></td>    
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT TOP 10 Materias.NombreMateria, count(*) as 'Cantidad' from ReprobadosFoliosExtras
inner join Materias on ReprobadosFoliosExtras.materia = Materias.idMateria
WHERE cohorte = @cohorte
GROUP BY Materias.NombreMateria order by cantidad desc">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 2 -->
                        <!-- Reporte reprobados asignaturas regularizacion -->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Asignaturas con mayor índice de reprobación al cierre de actas de regularización</b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="IndiceReprobacionRegu" runat="server" DataSourceID="SqlDataSource5">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Asignatura</th>
															<th>Reprobados</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("NombreMateria") %></td>
															<td><%# Eval("Cantidad") %></td>    
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT Materias.NombreMateria, count(*) as 'Cantidad' from ReprobadosFoliosRegularizacion
inner join Materias on ReprobadosFoliosRegularizacion.materia = Materias.idMateria
WHERE cohorte = @cohorte
GROUP BY Materias.NombreMateria order by cantidad desc">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Reporte 2 -->

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
              var QueryString = "reportes/Desercion.aspx?carrera=" + carrera + "&cohortes=" + cohortes;
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




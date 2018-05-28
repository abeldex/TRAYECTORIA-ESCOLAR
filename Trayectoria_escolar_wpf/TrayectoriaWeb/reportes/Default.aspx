<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrayectoriaWeb.reportes.Default" %>

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
              <a class="dropdown-item" href="#"><i class="ti-settings"></i> Configuracionr">ass="dropdown-item" href="../../../logout/"><i class="ti-power-off"></i> Salir</a>
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
                    <h1>Reportes de indices de Ingreso</h1>
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
            <!-- Ingreso por grupo y sexo -->
          <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Ingreso por Grupo y Sexo </b> </h5>          
              </div>      
                  <div class="card-body">    
                  <asp:Repeater ID="RepeaterIngresoGrupoSexo" runat="server" DataSourceID="SqlDataSource1">
												<HeaderTemplate>
													<table id="tabla1" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Categoria</th>
															<th>Cantidad</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("CATEGORIA") %></td>
															<td><%# Eval("CANTIDAD") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT 'Hombres Grupo 1' AS 'CATEGORIA', COUNT(*) AS 'CANTIDAD' FROM Alumno WHERE (idGrupo = 1) AND (Sexo = 'M') AND (CarreraIngreso = @carrera) AND (Cohorte = @cohorte) UNION ALL SELECT 'Mujeres Grupo 1' AS Expr1, COUNT(*) AS 'CANTIDAD' FROM Alumno AS Alumno_5 WHERE (idGrupo = 1) AND (Sexo = 'F') AND (CarreraIngreso = @carrera) AND (Cohorte = @cohorte) UNION ALL SELECT 'Hombres Grupo 2' AS Expr1, COUNT(*) AS Expr2 FROM Alumno AS Alumno_4 WHERE (idGrupo = 2) AND (Sexo = 'M') AND (CarreraIngreso = @carrera) AND (Cohorte = @cohorte) UNION ALL SELECT 'Mujeres Grupo 2' AS Expr1, COUNT(*) AS Expr2 FROM Alumno AS Alumno_3 WHERE (idGrupo = 2) AND (Sexo = 'F') AND (CarreraIngreso = @carrera) AND (Cohorte = @cohorte) UNION ALL SELECT 'Hombres Grupo 3' AS Expr1, COUNT(*) AS Expr2 FROM Alumno AS Alumno_2 WHERE (idGrupo = 3) AND (Sexo = 'M') AND (CarreraIngreso = @carrera) AND (Cohorte = @cohorte) UNION ALL SELECT 'Mujeres Grupo 3' AS Expr1, COUNT(*) AS Expr2 FROM Alumno AS Alumno_1 WHERE (idGrupo = 3) AND (Sexo = 'F') AND (CarreraIngreso = @carrera) AND (Cohorte = @cohorte)">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
          </div> 
           </div>          
            <!-- /Ingreso por grupo y sexo -->
            <!-- Ingreso por edad  Grupo 1-->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Ingreso por Edad </b></h5>   </div>
              <div class="card-body">
                  <h5>GRUPO 1</h5>
                      <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
												<HeaderTemplate>
													<table id="tabla2" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Alumnos</th>
															<th>Rango de Edad</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("Cantidad") %></td>
															<td><%# Eval("edad_rango") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>
                  
                   <h5>GRUPO 2</h5>
                   <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
												<HeaderTemplate>
													<table id="tabla2" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Alumnos</th>
															<th>Rango de Edad</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("Cantidad") %></td>
															<td><%# Eval("edad_rango") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>
                  
                  <h5>GRUPO 3</h5>
                  <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
												<HeaderTemplate>
													<table id="tabla2" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Alumnos</th>
															<th>Rango de Edad</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("Cantidad") %></td>
															<td><%# Eval("edad_rango") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM 
(
select 
  case
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) &lt; 18 then 'Menos de 18'
	 when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 18 and 20 then '18-20'
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 20 and 24 then '20-24'
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 25 and 34 then '24-26'
	 when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) &gt; 34 then 'Más de 34'
 END as edad_rango 
 from Alumno WHERE idGrupo = 3 and CarreraIngreso = @carrera and Cohorte = @cohorte
) t
group by edad_rango">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM 
(
select 
  case
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) &lt; 18 then 'Menos de 18'
	 when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 18 and 20 then '18-20'
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 20 and 24 then '20-24'
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 25 and 34 then '24-26'
	 when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) &gt; 34 then 'Más de 34'
 END as edad_rango 
 from Alumno WHERE idGrupo = 2 and CarreraIngreso = @carrera and Cohorte = @cohorte
) t
group by edad_rango">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM 
(
select 
  case
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) &lt; 18 then 'Menos de 18'
	 when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 18 and 20 then '18-20'
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 20 and 24 then '20-24'
   when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) between 25 and 34 then '24-26'
	 when FLOOR((CAST (GetDate() AS INTEGER) - CAST(fecha_nacimiento AS INTEGER)) / 365.25) &gt; 34 then 'Más de 34'
 END as edad_rango 
 from Alumno WHERE idGrupo = 1 and CarreraIngreso = @carrera and Cohorte = @cohorte
) t
group by edad_rango">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
              </div>
             </div>
            <!-- /Ingreso por edad -->
            <!-- Ingreso por procedencia  Grupo 1-->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Ingreso por Lugar de Procedencia</b></h5>  
              </div>
              <div class="card-body">
                  <h5>GRUPO 1</h5>
                      <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource5">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Estado</th>
															<th>Cantidad Alumnos</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("nombre") %></td>
															<td><%# Eval("cantidad") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>
                  
                  <h5>GRUPO 2</h5>
                   <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource6">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Estado</th>
															<th>Cantidad Alumnos</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("nombre") %></td>
															<td><%# Eval("cantidad") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="select estado.nombre, count(estado.nombre) as cantidad
from alumno inner join Municipio on alumno.idMunicipio = Municipio.id_municipio 
inner join Estado on Municipio.estado = estado.id_estado 
where idGrupo=2 and CarreraIngreso = @carrera and Cohorte = @cohorte
group by estado.nombre">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  
                  <h5>GRUPO 3</h5>
                   <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource7">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Estado</th>
															<th>Cantidad Alumnos</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("nombre") %></td>
															<td><%# Eval("cantidad") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="select estado.nombre, count(estado.nombre) as cantidad
from alumno inner join Municipio on alumno.idMunicipio = Municipio.id_municipio 
inner join Estado on Municipio.estado = estado.id_estado 
where idGrupo=3 and CarreraIngreso = @carrera and Cohorte = @cohorte
group by estado.nombre">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="select estado.nombre, count(estado.nombre) as cantidad
from alumno inner join Municipio on alumno.idMunicipio = Municipio.id_municipio 
inner join Estado on Municipio.estado = estado.id_estado 
where idGrupo=1 and CarreraIngreso = @carrera and Cohorte = @cohorte
group by estado.nombre">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              
              
              
              </div>
              </div>
             </div>
            <!-- /Ingreso por procedencia grupo 1 -->

             <!-- Ingreso por preparatoria-->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Ingreso por Institucion Educativa</b></h5>  
              </div>
              <div class="card-body">
                      <asp:Repeater ID="Repeater8" runat="server" DataSourceID="SqlDataSource8">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Institucion</th>
															<th>Cantidad Alumnos</th>
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
															<td><%# Eval("NombrePreparatoria") %></td>
															<td><%# Eval("cantidad") %></td>
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="select Preparatorias.NombrePreparatoria, count(Preparatorias.NombrePreparatoria) as cantidad
from alumno inner join Preparatorias on alumno.idPrepa = Preparatorias.idPreparatoria 
where CarreraIngreso = @carrera and Cohorte = @cohorte
group by Preparatorias.NombrePreparatoria">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
              </div>
             </div>
            <!-- /Ingreso por preparatorio -->
                  <!-- Ingreso por Promedio Preparatoria-->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Ingreso por Promedio de Preparatoria</b></h5>  
              </div>
              <div class="card-body">
                  <h5>GRUPO 1</h5>
                      <asp:Repeater ID="Repeater9" runat="server" DataSourceID="SqlDataSource9">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
                                                            <th>Promedio</th>
															<th>Cantidad</th>	
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
                                                            <td><%# Eval("promedio") %></td>
															<td><%# Eval("Cantidad") %></td>	
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>
                   
                  <h5>GRUPO 2</h5>
                   <asp:Repeater ID="Repeater10" runat="server" DataSourceID="SqlDataSource10">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
                                                            <th>Promedio</th>
															<th>Cantidad</th>	
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
                                                            <td><%# Eval("promedio") %></td>
															<td><%# Eval("Cantidad") %></td>	
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource10" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM (SELECT CASE WHEN PromedioPreparatoria = 10 THEN '10' WHEN PromedioPreparatoria BETWEEN 9 AND 10 THEN 'De 9 a menos de 10' WHEN PromedioPreparatoria BETWEEN 8 AND 9 THEN 'De 8 a menos de 9' WHEN PromedioPreparatoria BETWEEN 7 AND 8 THEN 'De 7 a menos de 8' WHEN PromedioPreparatoria BETWEEN 6 AND 7 THEN 'De 6 a menos de 7' WHEN PromedioPreparatoria < 6 THEN 'S/D' END AS promedio FROM Alumno WHERE idGrupo = 2 AND CarreraIngreso = @carrera AND Cohorte = @cohorte) t GROUP BY promedio">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                   
                  <h5>GRUPO 3</h5>
                                        <asp:Repeater ID="Repeater11" runat="server" DataSourceID="SqlDataSource11">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
                                                            <th>Promedio</th>
															<th>Cantidad</th>	
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
                                                            <td><%# Eval("promedio") %></td>
															<td><%# Eval("Cantidad") %></td>	
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>

                  <asp:SqlDataSource runat="server" ID="SqlDataSource11" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM (SELECT CASE WHEN PromedioPreparatoria = 10 THEN '10' WHEN PromedioPreparatoria BETWEEN 9 AND 10 THEN 'De 9 a menos de 10' WHEN PromedioPreparatoria BETWEEN 8 AND 9 THEN 'De 8 a menos de 9' WHEN PromedioPreparatoria BETWEEN 7 AND 8 THEN 'De 7 a menos de 8' WHEN PromedioPreparatoria BETWEEN 6 AND 7 THEN 'De 6 a menos de 7' WHEN PromedioPreparatoria < 6 THEN 'S/D' END AS promedio FROM Alumno WHERE idGrupo = 3 AND CarreraIngreso = @carrera AND Cohorte = @cohorte) t GROUP BY promedio">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource9" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM (SELECT CASE WHEN PromedioPreparatoria = 10 THEN '10' WHEN PromedioPreparatoria BETWEEN 9 AND 10 THEN 'De 9 a menos de 10' WHEN PromedioPreparatoria BETWEEN 8 AND 9 THEN 'De 8 a menos de 9' WHEN PromedioPreparatoria BETWEEN 7 AND 8 THEN 'De 7 a menos de 8' WHEN PromedioPreparatoria BETWEEN 6 AND 7 THEN 'De 6 a menos de 7' WHEN PromedioPreparatoria < 6 THEN 'S/D' END AS promedio FROM Alumno WHERE idGrupo = 1 AND CarreraIngreso = @carrera AND Cohorte = @cohorte) t GROUP BY promedio">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
              </div>
             </div>
            <!-- /Ingreso por Promedio-->
                              <!-- Ingreso por PromedioCeneval-->
            <div class="col">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Ingreso por Promedio de CENEVAL</b></h5>  
              </div>
              <div class="card-body">
                  <h5>GRUPO 1</h5>
                      <asp:Repeater ID="Repeater15" runat="server" DataSourceID="SqlDataSource15">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
                                                            <th>Promedio</th>
															<th>Cantidad</th>	
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
                                                            <td><%# Eval("PromedioCeneval") %></td>
															<td><%# Eval("Cantidad") %></td>	
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>
                   
                  <h5>GRUPO 2</h5>
                   <asp:Repeater ID="Repeater16" runat="server" DataSourceID="SqlDataSource16">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
                                                            <th>Promedio</th>
															<th>Cantidad</th>	
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
                                                            <td><%# Eval("PromedioCeneval") %></td>
															<td><%# Eval("Cantidad") %></td>	
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater> 
                   
                  <h5>GRUPO 3</h5>
                                        <asp:Repeater ID="Repeater17" runat="server" DataSourceID="SqlDataSource17">
												<HeaderTemplate>
													<table id="tabla5" class="table table-responsive" data-provide="datatables">
														<thead class="table-dark">
														<tr>
                                                            <th>Promedio</th>
															<th>Cantidad</th>	
														</thead>
														<tbody>
												</HeaderTemplate>
												<ItemTemplate>
														<tr>
                                                            <td><%# Eval("PromedioCeneval") %></td>
															<td><%# Eval("Cantidad") %></td>	
												</ItemTemplate>
												<FooterTemplate>
													</tbody>
												</table>
												</FooterTemplate>
										</asp:Repeater>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource15" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM (SELECT CASE WHEN Ceneval = 10 THEN '10' WHEN Ceneval BETWEEN 9 AND 10 THEN 'De 9 a menos de 10' WHEN Ceneval BETWEEN 8 AND 9 THEN 'De 8 a menos de 9' WHEN Ceneval BETWEEN 7 AND 8 THEN 'De 7 a menos de 8' WHEN Ceneval BETWEEN 6 AND 7 THEN 'De 6 a menos de 7' WHEN Ceneval < 6 THEN 'No capturado' END AS PromedioCeneval FROM Alumno WHERE idGrupo = 1 AND CarreraIngreso = @carrera AND Cohorte = @cohorte) t GROUP BY PromedioCeneval">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource16" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM (SELECT CASE WHEN Ceneval = 10 THEN '10' WHEN Ceneval BETWEEN 9 AND 10 THEN 'De 9 a menos de 10' WHEN Ceneval BETWEEN 8 AND 9 THEN 'De 8 a menos de 9' WHEN Ceneval BETWEEN 7 AND 8 THEN 'De 7 a menos de 8' WHEN Ceneval BETWEEN 6 AND 7 THEN 'De 6 a menos de 7' WHEN Ceneval < 6 THEN 'No capturado' END AS PromedioCeneval FROM Alumno WHERE idGrupo = 2 AND CarreraIngreso = @carrera AND Cohorte = @cohorte) t GROUP BY PromedioCeneval">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource17" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'Cantidad', * FROM (SELECT CASE WHEN Ceneval = 10 THEN '10' WHEN Ceneval BETWEEN 9 AND 10 THEN 'De 9 a menos de 10' WHEN Ceneval BETWEEN 8 AND 9 THEN 'De 8 a menos de 9' WHEN Ceneval BETWEEN 7 AND 8 THEN 'De 7 a menos de 8' WHEN Ceneval BETWEEN 6 AND 7 THEN 'De 6 a menos de 7' WHEN Ceneval < 6 THEN 'No capturado' END AS PromedioCeneval FROM Alumno WHERE idGrupo = 3 AND CarreraIngreso = @carrera AND Cohorte = @cohorte) t GROUP BY PromedioCeneval">
                      <SelectParameters>
                          <asp:QueryStringParameter QueryStringField="carrera" DefaultValue="0" Name="carrera"></asp:QueryStringParameter>
                          <asp:QueryStringParameter DefaultValue="0" Name="cohorte" QueryStringField="cohortes" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
              </div>
             </div>
            <!-- /Ingreso por Promedio Ceneval-->

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
              var QueryString = "reportes/Default.aspx?carrera=" + carrera + "&cohortes=" + cohortes;
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


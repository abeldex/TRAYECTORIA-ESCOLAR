<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aprobacion.aspx.cs" Inherits="TrayectoriaWeb.reportes.Aprobacion" %>

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
    <link href="../../../assets/css/core.min.css" rel="stylesheet">
    <link href="../../../assets/css/app.css" rel="stylesheet">
    <link href="../../../assets/css/style.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="../../../assets/img/favicon.png">
    <link rel="icon" href="../../../assets/img/favicon.png">
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
          <a href="#"><img src="../../../assets/img/logo-light.png" alt="logo"></a>
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
            <a class="menu-link" href="../../../../../alumnos/">
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
                <a class="menu-link" href="Default.aspx">
                  <span class="dot"></span>
                  <span class="title">Indices de Ingreso</span>
                </a>
              </li>
              <li class="menu-item">
                <a class="menu-link" href="Desercion.aspx">
                  <span class="dot"></span>
                  <span class="title">Indices de Desercion</span>
                </a>
              </li>
                  <li class="menu-item">
                <a class="menu-link" href="Eficiencias.aspx">
                  <span class="dot"></span>
                  <span class="title">Eficiencia de titulacion</span>
                </a>
              </li>
                  <li class="menu-item">
                <a class="menu-link" href="Aprobacion.aspx">
                  <span class="dot"></span>
                  <span class="title">Indices de Aprobación</span>
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
            <span class="topbar-btn" data-toggle="dropdown"><img class="avatar" src="../../../../../../../assets/img/default.jpg" alt="..."></span>
            
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
                    <h1>Indices y Tasas de Aprobación Ordinarios</h1>
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
        <div class="row" id="i_reportes">
            <!-- Reporte Desercion -->
                 <div class="col-lg-6">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Indice de Aprobacion en Ordinarios PERIODO I</b> </h5>          
              </div>      
                  <div class="card-body">    
                 
											
													<table id="tabla1" class="table table-responsive table-striped compact" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Grado</th>
															<th>Indice de aprobacion en ordinario</th>
														</thead>
														<tbody>
                                                            <tr>
															   <td>1ero</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlIndice1">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="1" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>2do</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlIndice2">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice2" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="3" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>3ero</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlIndice3">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice3" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="5" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>4to</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlIndice4">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice4" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="7" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>5to</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlIndice5">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice5" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="9" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
													</tbody>
												</table>
 


                      <div id="piechart"></div>
  
              </div>
          </div> 
           </div>    
            
            <div class="col-lg-6">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>Indice de Aprobacion en Ordinarios PERIODO II</b> </h5>          
              </div>      
                  <div class="card-body">    
                 
											
													<table id="tabla2" class="table table-responsive table-striped compact" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th>Grado</th>
															<th>Indice de aprobacion en ordinario</th>
														</thead>
														<tbody>
                                                            <tr>
															   <td>1ero</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlIndice6">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice6" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="2" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>2do</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlIndice7">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice7" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="4" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>3ero</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater8" runat="server" DataSourceID="SqlIndice8">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice8" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="6" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            <tr>
															   <td>4to</td>
                                                               <td>  
                                                                   <asp:Repeater ID="Repeater9" runat="server" DataSourceID="SqlIndice9">
                                                                        <ItemTemplate>
                                                                        <%# Eval("Porcentaje") %> %</td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlIndice9" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Indices_aprobacion_ord_1" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="8" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>
                                                            
													</tbody>
												</table>
  
              </div>
          </div> 
           </div>   
            
            <div class="col-lg-12">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>TASA DE APROBACION ORDINARIO PERIODO I</b> </h5>          
              </div>      
                  <div class="card-body">    
                 
											
													<table id="tabla3" class="table table-responsive table-striped compact" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th style="text-align:center; vertical-align:central;">Grado</th>
															<th colspan="6" style="text-align:center; vertical-align:central;">Asignaturas</th>
														</thead>
														<tbody>
                                                            <tr>
															   <td>1ero</td>
                                                                
                                                                   <asp:Repeater ID="Repeater10" runat="server" DataSourceID="SqlTasa1">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="1" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>  
                                                             <tr>
															   <td>2do</td>
                                                                
                                                                   <asp:Repeater ID="Repeater11" runat="server" DataSourceID="SqlTasa2">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa2" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="3" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>  
                                                            <tr>
															   <td>3er</td>
                                                                
                                                                   <asp:Repeater ID="Repeater12" runat="server" DataSourceID="SqlTasa3">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa3" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="5" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr> 
                                                             <tr>
															   <td>4to</td>
                                                                
                                                                   <asp:Repeater ID="Repeater13" runat="server" DataSourceID="SqlTasa4">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa4" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="7" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>  
                                                            <tr>
															   <td>5to</td>
                                                                
                                                                   <asp:Repeater ID="Repeater14" runat="server" DataSourceID="SqlTasa5">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa5" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="9" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>  
													</tbody>
												</table>
  
              </div>
          </div> 
           </div>   
            <!-- /Reporte 1 -->
            
            <div class="col-lg-12">
            <div class="card">
              <div class="card-header bg-info">
                <h5 class="card-title text-white"><b>TASA DE APROBACION ORDINARIO PERIODO II</b> </h5>          
              </div>      
                  <div class="card-body">    
                 
											
													<table id="tabla5" class="table table-responsive table-striped compact" data-provide="datatables">
														<thead class="table-dark">
														<tr>
															<th style="text-align:center; vertical-align:central;">Grado</th>
															<th colspan="6" style="text-align:center; vertical-align:central;">Asignaturas</th>
														</thead>
														<tbody>
                                                            <tr>
															   <td>1ero</td>
                                                                
                                                                   <asp:Repeater ID="Repeater15" runat="server" DataSourceID="SqlTasa6">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa6" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="2" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>  
                                                             <tr>
															   <td>2do</td>
                                                                
                                                                   <asp:Repeater ID="Repeater16" runat="server" DataSourceID="SqlTasa7">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa7" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="4" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>  
                                                            <tr>
															   <td>3er</td>
                                                                
                                                                   <asp:Repeater ID="Repeater17" runat="server" DataSourceID="SqlTasa8">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa8" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="6" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr> 
                                                             <tr>
															   <td>4to</td>
                                                                
                                                                   <asp:Repeater ID="Repeater18" runat="server" DataSourceID="SqlTasa9">
                                                                        <ItemTemplate>
                                                                        <td style="text-align:center; font-size:10px;"><span style="font-weight:400"><%# Eval("%") %>%</span><br><%# Eval("NombreMateria") %><br />Aprobados: <%# Eval("Aprobados") %> de <%# Eval("Total") %></td>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>     
                                                                   <asp:SqlDataSource runat="server" ID="SqlTasa9" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="Sp_Tasas_Aprobacion" SelectCommandType="StoredProcedure">
                                                                  <SelectParameters>
                                                                      <asp:QueryStringParameter DefaultValue="8" QueryStringField="periodo" Name="periodo" Type="Int32"></asp:QueryStringParameter>
                                                                      <asp:QueryStringParameter DefaultValue="null" Name="cohorte" QueryStringField="cohortes" />
                                                                      <asp:QueryStringParameter DefaultValue="0" Name="CarreraIngreso" QueryStringField="carrera" Type="Int32" />
                                                                  </SelectParameters>
                                                              </asp:SqlDataSource>   
                                                            </tr>   
													</tbody>
												</table>
  
              </div>
          </div> 
           </div>

             </div>
        </form>
      </div><!--/.main-content -->

           <!-- Footer -->
      <footer class="site-footer">
        <div class="row">
          <div class="col">
            <p class="text-center text-md-left">Copyright 2017 .</div>
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
              var QueryString = "reportes/Aprobacion.aspx?carrera=" + carrera + "&cohortes=" + cohortes;
              //alert(QueryString);
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
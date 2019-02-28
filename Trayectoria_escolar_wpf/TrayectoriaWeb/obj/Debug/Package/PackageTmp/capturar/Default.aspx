<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrayectoriaWeb.capturar.Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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

         <style type="text/css">
   /*AutoComplete flyout */
        .completionList {
        border:solid 1px #444444;
        margin:0px;
        padding:2px;
        height: 100px;
        overflow:auto;
        background-color: #FFFFFF;
        font-family:Calibri;
        }

        .listItem {
        color: #1C1C1C;
        }

        .itemHighlighted {
        background-color: #abcdf4;
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

          <li class="menu-item active">
            <a class="menu-link" href="../../../../../alumnos/">
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
                  <li class="menu-item">
                <a class="menu-link" href="reportes/Aprobacion.aspx">
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
    
            <div class="card" id="i_reportes">
            <!-- Ingreso por grupo y sexo -->
                <div class="card">   
                        <div class="card-body"> 

                           <div class="row">
                               <div class="col-2">         
                                   <img src="/assets/img/uas.png" width="60"/>
                               </div>
                               
                               <div class="col-8"><center>
                                   <h5>UNIVERSIDAD AUTÓNOMA DE SINALOA</h5>
                                   <h5>SISTEMA AUTOMATIZADO DE CONTROL ESCOLAR</h5>
                                   <h5>CIFRAS DE CONTROL DE EXÁMENES</h5>
                               </center></div>

                               <div class="col-2"><img src="/assets/img/LOGO-GEODESIA.png" width="80"/></div>

                           </div>
                            <div class="row">
                                 <div class="col-2">
                                    <select id="tipo_examen" class="form-control">
                                        <option value="OR">ORDINARIO</option>
                                        <option value="CO">COMPLEMENTARIO</option>
                                        <option value="EX">EXTRAORDINARIO</option>
                                        <option value="RE">REGULARIZACION</option>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <asp:DropDownList CssClass="form-control" ID="cohortes" runat="server" DataSourceID="SqlDataSourceCohortes" DataTextField="Cohorte" DataValueField="Cohorte"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceCohortes" runat="server" ConnectionString="<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>" SelectCommand="SELECT DISTINCT Cohorte FROM Alumno"></asp:SqlDataSource></div>
                                <div class="col-2">
                                    <input type="text" class="form-control" name="txt_folio" id="txt_folio" placeholder="FOLIO" style="color:red;"/>
                                </div>
                                <div class="col-2">
                                    <input type="text" class="form-control" name="txt_periodo" id="txt_periodo" placeholder="PERIODO"/>
                                </div>
                                <div class="col-2">
                                   <input type="text" class="form-control" name="txt_grupo" id="txt_grupo" placeholder="GRUPO" />
                                </div>
                                <div class="col-2">
                                    <input type="date" class="form-control" name="txt_fecha" id="txt_fecha"/>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    CARRERA :
                                </div>
                                <div class="col-10">
                                    <asp:DropDownList CssClass="form-control" ID="carrera" runat="server" DataSourceID="SqlDataSourceCarreras" DataTextField="NombreCarrera" DataValueField="idCarrera"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceCarreras" runat="server" ConnectionString="<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>" SelectCommand="SELECT * FROM Carrera"></asp:SqlDataSource>
                                </div>
                                <div class="col-2">
                                    MATERIA :
                                </div>
                                <div class="col-10">
                                    <asp:DropDownList CssClass="form-control" ID="materia" runat="server" DataSourceID="SqlDataSourceMaterias" DataTextField="NombreMateria" DataValueField="idMateria"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceMaterias" runat="server" ConnectionString="<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>" SelectCommand="SELECT * FROM Materias"></asp:SqlDataSource>
                                </div>
                                 <div class="col-2">
                                    PROFESOR :
                                </div>
                                <div class="col-10">
                                    <asp:DropDownList CssClass="form-control" ID="profesor" runat="server" DataSourceID="SqlDataSourceProfesores" DataTextField="nombre_maestro" DataValueField="id_maestro"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceProfesores" runat="server" ConnectionString="<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>" SelectCommand="SELECT * FROM Maestros"></asp:SqlDataSource>
                                </div>

                                <div class="col-12">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <h4>Asignar Alumnos</h4>
                           
                            <asp:TextBox ID="txt_alumno" CssClass="form-control" runat="server" CompletionListCssClass="completionList" Width="100%"></asp:TextBox>

                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txt_alumno"

                                 MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"

                                 ServiceMethod="GetAlumnos" CompletionListCssClass="completionList"
                             CompletionListHighlightedItemCssClass="itemHighlighted"
                             CompletionListItemCssClass="listItem" ></asp:AutoCompleteExtender>
                                <!--<button type="button" class="btn btn-success" id="btn_guardar">Agregar</button>-->
                                    <br />

                                    <table id="tabla_alumnos" class="table table-responsive table-striped" data-provide="datatables">
														<thead class="table-dark">
														    <tr>
															    <th>NUMERO DE CUENTA</th>
															    <th>NOMBRE DEL ALUMNO</th>
                                                                <th>CALIFICACION</th>
                                                            </tr>
														</thead>
														<tbody>
                                                        </tbody>
                                     </table>
                                                           
                                                            
                                </div>
                            </div>
                        </div> 
                </div>
              </div>



        
       
       
       
       </form>


      </div><!--/.main-content -->
        


           <!-- Footer -->
      <footer class="site-footer">
        <div class="row">
          <div class="col-10">
            <p class="text-center text-md-left">Copyright 2017 .       </div>
           
          <div class="col-2">
              <button type="button" class="btn btn-success" id="btn_guardar">Guardar</button>
          </div> 

        </div>
          </footer>
    </main>
  
      
        <!-- Scripts -->
    <script src="assets/js/core.min.js"></script>
    <script src="assets/js/app.js"></script>
      <script>
          $(document).ready(function () {
              //alert("jauqery jalando al cien");
          });

           $('#txt_alumno').on('keypress', function (e) {
                 if(e.which === 13){
                     if ($('#txt_alumno').val() != "") {
                      var alumno = $('#txt_alumno').val();
                      var nocuenta = /\(([^)]*)\)/.exec(alumno)[1];
                      var nombre = alumno.replace(nocuenta, " ").substring(3);
                      //alert("cuenta:" + nocuenta + "  nombre: " + nombre);

                   var row = '<tr>'+
                              '<td>'+nocuenta+'</td>'+
                              '<td>'+nombre+'</td>'+
                              '<td><input type="number" class="form-control" max="10" min="0" id="cal_'+nocuenta+'"></td>' +
                             '</tr>';
                   $('table> tbody:last').append(row);
                         $('#txt_alumno').val("");
                         $('#txt_alumno').focus();
                     ;
                  }
                  else {
                      alert('Seleccione un alumno primero');

                  }
                 }
           });

          $(document).on('click', '#btn_guardar', function () {
               //OBTENER LOS VALORES DE LOS CONTROLEs
              var folio = $('#txt_folio').val();
              var cohorte = $('#cohortes').val();
              var periodo = $('#txt_periodo').val();
              var grupo = $('#txt_grupo').val();
              var fecha = $('#txt_fecha').val();
              var carrera = $('#carrera').val();
              var materia = $('#materia').val();
              var maestro = $('#profesor').val();
              var tipo = $('#tipo_examen').val();
              var datasend = "folio=" + folio + "&cohorte=" + cohorte + "&periodo=" + periodo+"&grupo=" + grupo + "&fecha=" + fecha + "&carrera=" + carrera + "&materia=" + materia + "&maestro=" + maestro + "&tipo=" + tipo;

              //var datasend = "folio=" + folio + "&cohorte=" + cohorte + "&periodo=" + periodo + "&grupo=" + grupo + "&fecha=" + fecha + "&carrera=" + carrera + "&materia=" + materia + "&materia=" + materia + "&maestro=" + maestro + "&tipo=" + tipo;
              alert(datasend);
              //GUARDAR EL FOLIO
                      $.ajax({
                          type: "POST",
                          url: "capturar/capturar.asmx/InsertFolio",
                          data: datasend, // the data in form-encoded format, ie as it would appear on a querystring
                          //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                          dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                          success: function (data) {
                              //$('#tabla').load(location.href + ' #tabla>*', "");
                              //location.reload();
                              //$('#txt_alumno').val('');
                              //alert(data);
                          }
                      })

               //OBTENER LOS VALORES DE LOS ALUMNOS
               var table = document.getElementById('tabla_alumnos');

                var rowLength = table.rows.length;

                for(var i=1; i<rowLength; i+=1){
                    var row = table.rows[i];
                    var cuenta = row.cells[0].innerHTML;
                   var cal = document.getElementById("cal_"+cuenta).value;
                    //alert("cuenta=" + cuenta + " | nombre=" + row.cells[1].innerHTML + " | cal: " + cal);
                    var datasendcal = "folio="+folio+"&cuenta="+cuenta+"&nombre="+row.cells[1].innerHTML+"&calificacion="+cal+"&tipo="+tipo;
                    //GUARDAR LA CALIFICACION EN LA TABLA
                      $.ajax({
                          type: "POST",
                          url: "capturar/capturar.asmx/InsertCal",
                          data: datasendcal, // the data in form-encoded format, ie as it would appear on a querystring
                          //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                          dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                          success: function (data) {
                              //$('#tabla').load(location.href + ' #tabla>*', "");
                              //location.reload();
                              //$('#txt_alumno').val('');
                              //alert(data);
                          }
                      })
              }

              location.reload();
           });

     </script>
  </body>
</html>


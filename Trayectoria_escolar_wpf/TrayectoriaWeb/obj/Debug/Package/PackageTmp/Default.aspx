<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrayectoriaWeb.Default" %>

<!DOCTYPE html>
<html lang="es_MX">
  <head>
    <base href="/">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <meta name="description" content="sandieguito app">
    <meta name="keywords" content="san, dieguito, web app, ui framework, bootstrap">

    <title>Sistema de Trayectoria Escolar PCI | Inicio</title>

 <!-- Styles -->
    <link href="assets/css/core.min.css" rel="stylesheet">
    <link href="assets/css/app.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
     
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/2.2.0/css/responsive.dataTables.min.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="assets/img/favicon.png">
    <link rel="icon" href="assets/img/favicon.png">
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
          <a href="index.php"><img src="assets/img/logo-light.png" alt="logo"></a>
        </span>
        <span class="sidebar-toggle-fold "></span>
      </header>

      <nav class="sidebar-navigation bg-info">
        <ul class="menu menu-sm menu-bordery">

          <li class="menu-item active">
            <a class="menu-link" href="../">
              <span class="icon ti-home"></span>
              <span class="title">Inicio</span>
            </a>
          </li>

          <li class="menu-item">
            <a class="menu-link" href="alumnos/">
              <span class="icon ti-user"></span>
              <span class="title">Alumnos</span>
            </a> 
          </li>   
          <li class="menu-item">
            <a class="menu-link" href="#">
              <span class="icon ti-pie-chart"></span>
              <span class="title">Reportes</span>
            </a>
              <ul class="menu-submenu">
              <li class="menu-item">
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
            <span class="topbar-btn" data-toggle="dropdown"><img class="avatar" src="assets/img/default.jpg" alt="..."></span>
            
            <div class="dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href="#"><i class="ti-settings"></i> Configuracion</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="logout/"><i class="ti-power-off"></i> Salir</a>
            </div>
          </li>
        </ul>

      </div>
    </header>
    <!-- END Topbar -->

    <!-- Main container -->
    <main>

      <div class="main-content">
        <div class="row">

          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title"><strong>Sistema de Trayectoria Escolar - FACITE</strong></h5>
              </div>

              <div class="card-body">
               <h4>Bienvenido</h4>
                  
              </div>

            </div>
          </div>




        </div>
      </div><!--/.main-content -->

           <!-- Footer -->
      <footer class="site-footer">
        <div class="row">
          <div class="col-md-6">
            <p class="text-center text-md-left">Copyright 2017 .</p>
          </div>
        </div>
      </footer>
      <!-- END Footer -->

    </main>
    <!-- END Main container -->



        <!-- Scripts -->
    <script src="assets/js/core.min.js"></script>
    <script src="assets/js/app.js"></script>

    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.0/js/dataTables.responsive.min.js"></script>
    
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>


    
  

  </body>
</html>

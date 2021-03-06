﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Trayectoria_escolar_wpf
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ListBoxItem_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            //abrimos la seccion de alumnos
            Main.Content = new Paginas.alumnos();
        }

        private void ListBoxItem_MouseLeftButtonUp_1(object sender, MouseButtonEventArgs e)
        {
            //Main.Content = new Paginas.captura_calificaciones();
            Paginas.captura_calificaciones captura = new Paginas.captura_calificaciones();
            captura.Show();
        }

        private void ListBoxItem_MouseLeftButtonUp_2(object sender, MouseButtonEventArgs e)
        {
            Main.Content = new Paginas.folios_ordinarios();
        }

        private void ListBoxItem_MouseLeftButtonUp_3(object sender, MouseButtonEventArgs e)
        {
            Paginas.captura_extraordinarios extras = new Paginas.captura_extraordinarios();
            extras.Show();
        }

        private void ListBoxItem_MouseLeftButtonUp_4(object sender, MouseButtonEventArgs e)
        {
            Reportes.Reportes r = new Reportes.Reportes();
            r.Show();
        }

        private void ListBoxItem_MouseLeftButtonUp_5(object sender, MouseButtonEventArgs e)
        {
            Reportes.ReporteDesercionRezago rdr = new Reportes.ReporteDesercionRezago();
            rdr.Show();
        }
    }
}

using System;
using System.Windows;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Interaction logic for Verkardex.xaml
    /// </summary>
    public partial class Verkardex : Window
    {
        public Verkardex(string cuenta, string nombre)
        {
            InitializeComponent();
            navegador.Source = new Uri("http://148.227.28.3/TrayectoriaReportes/alumnos/kardex.aspx?cuenta="+cuenta+ "&nombre="+nombre, UriKind.Absolute);
            
        }

        private void navegador_LoadCompleted(object sender, System.Windows.Navigation.NavigationEventArgs e)
        {

        }
    }
}

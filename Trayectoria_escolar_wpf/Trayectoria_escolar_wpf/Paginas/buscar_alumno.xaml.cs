using System;
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
using System.Windows.Shapes;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Lógica de interacción para buscar_alumno.xaml
    /// </summary>
    public partial class buscar_alumno : Window
    {
        public buscar_alumno()
        {
            InitializeComponent();
        }
        public string Cuenta
        {
            get { return txt_cuenta.Text; }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }
    }
}

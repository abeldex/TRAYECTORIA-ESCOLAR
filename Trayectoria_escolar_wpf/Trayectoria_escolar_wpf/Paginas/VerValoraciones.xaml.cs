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
    /// Interaction logic for VerValoraciones.xaml
    /// </summary>
    public partial class VerValoraciones : Window
    {
        public VerValoraciones(string cuenta)
        {
            InitializeComponent();
            navegador.Source = new Uri("http://148.227.28.3/SistemaParciales/admin/reportes/reporte_alumno.aspx?alumno=" + cuenta, UriKind.Absolute);
            
        }



       
    }
}

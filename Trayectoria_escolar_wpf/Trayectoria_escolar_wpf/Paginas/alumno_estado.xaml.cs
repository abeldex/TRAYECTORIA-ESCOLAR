using Negocio;
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
    /// Lógica de interacción para alumno_estado.xaml
    /// </summary>
    public partial class alumno_estado : Window
    {
        private string text;

        public alumno_estado()
        {
            InitializeComponent();
            Listar("");
        }

        public alumno_estado(string cuenta)
        {
            InitializeComponent();
            txt_cuenta.Text = cuenta;
            Listar(cuenta);
        }

        private void Listar(string cuenta)
        {
            try
            {
                dataGridEstadoAlumno.ItemsSource = new cn_alumnos().Obtener_estado_alumno(cuenta);
            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message);
                //MessageBox.Show(error.Message);
            }
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Listar(txt_cuenta.Text);
        }
    }
}

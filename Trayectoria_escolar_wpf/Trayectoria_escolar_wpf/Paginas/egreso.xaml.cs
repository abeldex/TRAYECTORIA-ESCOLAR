using System;
using System.Windows;
using Negocio;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Interaction logic for egreso.xaml
    /// </summary>
    public partial class egreso
    {
        string _cuenta;
        public egreso(string cuenta)
        {
            _cuenta = cuenta;
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //guardamos en la base de datos el año de egreso del alumno
            try
            {
                new cn_alumnos().FechaEgreso(_cuenta, txt_egreso.Text);
                MessageBox.Show("Año de egreso guardado correctamente");
                this.Close();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
    }
}

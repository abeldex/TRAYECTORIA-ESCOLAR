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
using Negocio;
using Entidades;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Lógica de interacción para editar_alumno.xaml
    /// </summary>
    public partial class editar_alumno : Window
    {
        public editar_alumno()
        {
            InitializeComponent();
        }
        string cuenta_old;
        public editar_alumno(string cuenta, string nombre, string cohorte, string semestre, string grupo, string turno, string carrera)
        {
            InitializeComponent();
            txt_cuenta_editar.Text = cuenta;
            cuenta_old = cuenta;
            txt_nombre_editar.Text = nombre;
            txt_cohorte.Text = cohorte;
            txt_grupo.Text = grupo;
            txt_periodo.Text = semestre;
            txt_turno.Text = turno;
            txt_carrera.Text = carrera;
        }

        private void btn_cancelar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btn_guardar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //guardamos el alumno
                new cn_alumnos().Actualizar(cuenta_old, txt_cuenta_editar.Text, txt_nombre_editar.Text, int.Parse(txt_grupo.Text), txt_turno.Text, int.Parse(txt_periodo.Text), txt_cohorte.Text, int.Parse(txt_carrera.Text));
                MessageBox.Show("Alumno actualizado correctamente");
                this.Close();
            }
            catch
            {

            }
        }
    }
}

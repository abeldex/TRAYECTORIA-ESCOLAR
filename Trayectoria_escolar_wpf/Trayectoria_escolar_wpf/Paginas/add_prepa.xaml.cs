using Entidades;
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
    /// Lógica de interacción para add_prepa.xaml
    /// </summary>
    public partial class add_prepa : Window
    {
        public add_prepa()
        {
            InitializeComponent();
        }
        public string nombre
        {
            get { return txt_nombreprepa.Text; }
        }
        //metodo que guarda una preparatoria
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                e_preparatoria p = new e_preparatoria();
                p.nombre = txt_nombreprepa.Text;
                p.regimen = ((ComboBoxItem)cmb_regimen.SelectedItem).Tag.ToString();
                p.uas = char.Parse(((ComboBoxItem)cmb_uas.SelectedItem).Tag.ToString());
                //insertamos por medio de la clase de negocios
                new cn_preparatorias().Insertar(p);
                MessageBox.Show("Preparatoria Guardada");
                agregar_alumno.main.setPrepa = p.nombre;

                this.Close();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}

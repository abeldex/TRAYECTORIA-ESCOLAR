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

namespace Trayectoria_escolar_wpf.Reportes
{
    /// <summary>
    /// Lógica de interacción para ReporteDesercionRezago.xaml
    /// </summary>
    public partial class ReporteDesercionRezago : Window
    {
        public ReporteDesercionRezago()
        {
            InitializeComponent();
            ListarDesercionGrupoCohorte();
            ListarDesercionGrupoSexo();
            ListarRezagadosGrupoCohorte();
            ListarRezagadosGrupoSexo();
        }

        public void ListarDesercionGrupoCohorte()
        {
            try
            {
                dataGrid1.ItemsSource = new cn_reportes().GetDesercionCohorte();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
        public void ListarDesercionGrupoSexo()
        {
            try
            {
                dataGrid2.ItemsSource = new cn_reportes().GetDesercionGrupoSexo();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
        public void ListarRezagadosGrupoCohorte()
        {
            try
            {
                dataGrid3.ItemsSource = new cn_reportes().GetRezagadoGrupoCohorte();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
        public void ListarRezagadosGrupoSexo()
        {
            try
            {
                dataGrid4.ItemsSource = new cn_reportes().GetRezagadoGrupoSexo();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
    }
}

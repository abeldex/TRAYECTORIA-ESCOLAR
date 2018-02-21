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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Negocio;
using System.ComponentModel;
using System.Data;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Lógica de interacción para folios_ordinarios.xaml
    /// </summary>
    public partial class folios_ordinarios : Page
    {
        public folios_ordinarios()
        {
            InitializeComponent();
            Listar();

        }

        private void btn_filtrar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                this.dgvFolios.ItemsSource = new cn_folios_ordinarios().ListarFolios(cmbCohorte.Text);
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un cohorte y grupo");
            }
        }

        //metodo para buscar un alumno por su nombre o cuenta
        public void ListarBuscar(string cohorte)
        {
            try
            {
                dgvFolios.ItemsSource = new cn_folios_ordinarios().ListarFolios(cohorte);
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        //metodo para listar todos los usuarios en el grid
        private void Listar()
        {
            BackgroundWorker worker = new BackgroundWorker();
            worker.WorkerReportsProgress = true;
            worker.WorkerSupportsCancellation = true;
            worker.DoWork += worker_DoWork;
            worker.ProgressChanged += worker_ProgressChanged;
            worker.RunWorkerCompleted += worker_RunWorkerCompleted;
            worker.RunWorkerAsync(10000);
            /*
            try
            {
                dgvAlumnos.ItemsSource = new cn_alumnos().ListarAlumnos();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }*/

        }

        private void worker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Result is DataTable)
            {
                dgvFolios.ItemsSource = ((DataTable)e.Result).DefaultView;

            }
            else if (e.Result is Exception)
            {

            }
        }


        private void worker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {

        }

        private void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            try
            {
                DataTable dt = ConvertToDataTable(new cn_folios_ordinarios().ListarFolios("2012-2017"));
                e.Result = dt;
            }
            catch (Exception ex)
            {
                e.Result = ex;
            }
        }

        public DataTable ConvertToDataTable<T>(IList<T> data)
        {
            PropertyDescriptorCollection properties =
               TypeDescriptor.GetProperties(typeof(T));
            DataTable table = new DataTable();
            foreach (PropertyDescriptor prop in properties)
                table.Columns.Add(prop.Name, Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType);
            foreach (T item in data)
            {
                DataRow row = table.NewRow();
                foreach (PropertyDescriptor prop in properties)
                    row[prop.Name] = prop.GetValue(item) ?? DBNull.Value;
                table.Rows.Add(row);
            }
            return table;

        }
    }
}

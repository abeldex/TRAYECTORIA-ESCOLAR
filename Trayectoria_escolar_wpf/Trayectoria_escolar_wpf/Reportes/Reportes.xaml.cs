using System;
using System.Collections.Generic;
using System.Windows;
using LiveCharts;
using LiveCharts.Wpf;
using Negocio;
using System.Data;
using DAC;
using System.ComponentModel;
using System.Windows.Controls;
using System.Windows.Documents;

namespace Trayectoria_escolar_wpf.Reportes
{
    /// <summary>
    /// Lógica de interacción para Reportes.xaml
    /// </summary>
    public partial class Reportes : Window
    {
        //metodos para cargar las graficas
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> Formatter { get; set; }
        /// <summary>
        /// Metodos para cargar las Gráficas
        /// </summary>
        public Reportes()
        {
            InitializeComponent();
            ListarIndiceGrupoSexo();
            ListarIngresoGrupoEdad();
            ListarIngresoLugarProcedencia();
            ListarIngresoInstitucionEducativa();
            ListarIngresoPromedioGrupo();
        }

        public void ListarIngresoPromedioGrupo()
        {
            try
            {
                DataGrid9.ItemsSource = new cn_reportes().GetIngresoPromedioGpo1();
                DataGrid10.ItemsSource = new cn_reportes().GetIngresoPromedioGpo2();
                DataGrid11.ItemsSource = new cn_reportes().GetIngresoPromedioGpo3();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ListarIngresoGrupoEdad()
        {
            try
            {
                DataGrid2.ItemsSource = new cn_reportes().GetIngresoEdadGpo1();
                DataGrid3.ItemsSource = new cn_reportes().GetIngresoEdadGpo2();
                DataGrid4.ItemsSource = new cn_reportes().GetIngresoEdadGpo3();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ListarIngresoInstitucionEducativa()
        {
            try
            {
                DataGrid8.ItemsSource = new cn_reportes().GetIngresoInstitucionEducativa();
              
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ListarIngresoLugarProcedencia()
        {
            try
            {
                DataGrid5.ItemsSource = new cn_reportes().GetIngresoProcedenciaGpo1();
                DataGrid6.ItemsSource = new cn_reportes().GetIngresoProcedenciaGpo2();
                DataGrid7.ItemsSource = new cn_reportes().GetIngresoProcedenciaGpo3();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ListarIndiceGrupoSexo()
        {
            try
            {
                dataGrid1.ItemsSource = new cn_reportes().GetIngresoGrupoSexo();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }

            //cargar la grafica
            foreach (DataRow row in ConvertToDataTable(new cn_reportes().GetIngresoGrupoSexo()).Rows)
            {
                double cantidad = double.Parse(row["CANTIDAD"].ToString());

            }

            ChartValues<double> CantidadesArrHombres = new ChartValues<double>();
            DataTable DgIngreso = ConvertToDataTable(new cn_reportes().GetIngresoGrupoSexo());
            // Obtenemos los valores de los hombres
            for (int a = 0; a < DgIngreso.Rows.Count; a = a+2)
            {
                CantidadesArrHombres.Add(double.Parse(DgIngreso.Rows[a]["CANTIDAD"].ToString()));
            }
            // Obtenemos los valores de las mujeres
            ChartValues<double> CantidadesArrMujeres = new ChartValues<double>();
            for (int a = 1; a < DgIngreso.Rows.Count; a = a + 2)
            {
                CantidadesArrMujeres.Add(double.Parse(DgIngreso.Rows[a]["CANTIDAD"].ToString()));
            }
            SeriesCollection = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "Hombres",
                    Values = CantidadesArrHombres
                }
            };

            //adding series will update and animate the chart automatically
            SeriesCollection.Add(new ColumnSeries
            {
                Title = "Mujeres",
                Values = CantidadesArrMujeres
            });

            Labels = new[] { "Grupo1", "Grupo2", "Grupo3"};
            Formatter = value => value.ToString("N");

            DataContext = this;
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

        private void button_Click(object sender, RoutedEventArgs e)
        {
            PrintDialog print = new PrintDialog();
        }

        private void btn_imprimir_Click(object sender, RoutedEventArgs e)
        {
            Myscrollviewer.ScrollToTop();

            PrintDialog printDialog = new PrintDialog();
            if (printDialog.ShowDialog() == true)
            {
                printDialog.PrintVisual(gridReport, "Reporte de Indices de Ingreso");
            }

        }
    }
}

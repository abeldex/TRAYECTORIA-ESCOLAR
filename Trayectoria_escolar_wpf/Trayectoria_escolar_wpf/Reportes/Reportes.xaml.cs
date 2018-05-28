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
using System.Linq;
using System.Data;

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
        /// Metodos para cargar las Gráficas de las edades
        /// </summary>
        /// .
        public SeriesCollection SeriesCollectionEdades { get; set; }
        public string[] LabelsEdades { get; set; }
        public Func<double, string> FormatterEdades { get; set; }

        public SeriesCollection SeriesCollectionProcedencia { get; set; }
        public string[] LabelsProcedencia { get; set; }
        public Func<double, string> FormatterProcedencia { get; set; }

        public Reportes()
        {
            InitializeComponent();
            ListarIndiceGrupoSexo();
            ListarIngresoGrupoEdad();
            ListarIngresoLugarProcedencia();
            ListarIngresoInstitucionEducativa();
            ListarIngresoPromedioGrupo();
            ListarIngresoCenevalGrupo();
            ListarIngresoCarreras();
        }

        public void ListarIngresoCarreras()
        {
            try
            {
                DataGrid15.ItemsSource = new cn_reportes().GetIngresoCarreras();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ListarIngresoCenevalGrupo()
        {
            try
            {
                DataGrid12.ItemsSource = new cn_reportes().GetIngresoCenevalGpo1();
                DataGrid13.ItemsSource = new cn_reportes().GetIngresoCenevalGpo2();
                DataGrid14.ItemsSource = new cn_reportes().GetIngresoCenevalGpo3();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
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

            //obtenemos los valores del grupo 1       
            ChartValues<double> CantidadGrupo1Arr = new ChartValues<double>();
            DataTable DgCantidadGrupo1Arr = ConvertToDataTable(new cn_reportes().GetIngresoEdadGpo1());
            for (int a = 0; a < DgCantidadGrupo1Arr.Rows.Count; a ++)
            {
                CantidadGrupo1Arr.Add(double.Parse(DgCantidadGrupo1Arr.Rows[a]["Cantidad"].ToString()));
            }
            //obtenemos los valores del grupo 2
            ChartValues<double> CantidadGrupo2Arr = new ChartValues<double>();
            DataTable DgCantidadGrupo2Arr = ConvertToDataTable(new cn_reportes().GetIngresoEdadGpo2());
            for (int a = 0; a < DgCantidadGrupo2Arr.Rows.Count; a++)
            {
                CantidadGrupo2Arr.Add(double.Parse(DgCantidadGrupo2Arr.Rows[a]["Cantidad"].ToString()));
            }
            //obtenemos los valores del grupo 3
            ChartValues<double> CantidadGrupo3Arr = new ChartValues<double>();
            DataTable DgCantidadGrupo3Arr = ConvertToDataTable(new cn_reportes().GetIngresoEdadGpo3());
            for (int a = 0; a < DgCantidadGrupo3Arr.Rows.Count; a++)
            {
                CantidadGrupo3Arr.Add(double.Parse(DgCantidadGrupo3Arr.Rows[a]["Cantidad"].ToString()));
            }

            SeriesCollectionEdades = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "Grupo1",
                    Values = CantidadGrupo1Arr
                }
            };
            //adding series will update and animate the chart automatically
            SeriesCollectionEdades.Add(new ColumnSeries
            {
                Title = "Grupo2",
                Values = CantidadGrupo2Arr
            });
            //adding series will update and animate the chart automatically
            SeriesCollectionEdades.Add(new ColumnSeries
            {
                Title = "Grupo3",
                Values = CantidadGrupo3Arr
            });
            LabelsEdades = new[] { "18-20", "20-24", "24-26", "34+" };
            FormatterEdades = value => value.ToString("N");
            DataContext = this;
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

            //cargamos las graficas
            ChartValues<double> ProcedenciaGrupo1Arr = new ChartValues<double>();
            ChartValues<double> ProcedenciaGrupo2Arr = new ChartValues<double>();
            
            ChartValues<double> ProcedenciaGrupo3Arr = new ChartValues<double>();
            //obtenemos los valores de los datatables
            DataTable DgCantidadGrupo1Arr = ConvertToDataTable(new cn_reportes().GetIngresoProcedenciaGpo1());
            for (int a = 0; a < DgCantidadGrupo1Arr.Rows.Count; a++)
            {
                ProcedenciaGrupo1Arr.Add(double.Parse(DgCantidadGrupo1Arr.Rows[a]["cantidad"].ToString()));
            }
            DataTable DgCantidadGrupo2Arr = ConvertToDataTable(new cn_reportes().GetIngresoProcedenciaGpo2());
            for (int a = 0; a < DgCantidadGrupo1Arr.Rows.Count; a++)
            {
                ProcedenciaGrupo2Arr.Add(double.Parse(DgCantidadGrupo2Arr.Rows[a]["cantidad"].ToString()));
            }
            DataTable DgCantidadGrupo3Arr = ConvertToDataTable(new cn_reportes().GetIngresoProcedenciaGpo3());
            for (int a = 0; a < DgCantidadGrupo1Arr.Rows.Count; a++)
            {
                ProcedenciaGrupo3Arr.Add(double.Parse(DgCantidadGrupo3Arr.Rows[a]["cantidad"].ToString()));
            }
            //agregamos las series
            SeriesCollectionProcedencia = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "Grupo1",
                    Values = ProcedenciaGrupo1Arr
                }
            };
            //adding series will update and animate the chart automatically
            SeriesCollectionProcedencia.Add(new ColumnSeries
            {
                Title = "Grupo2",
                Values = ProcedenciaGrupo2Arr
            });
            //adding series will update and animate the chart automatically
            SeriesCollectionProcedencia.Add(new ColumnSeries
            {
                Title = "Grupo3",
                Values = ProcedenciaGrupo3Arr
            });
            string[] arrray = DgCantidadGrupo2Arr.Rows.OfType<DataRow>().Select(k => k[0].ToString()).ToArray();
            LabelsProcedencia = arrray;
            FormatterEdades = value => value.ToString("N");
            DataContext = this;
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

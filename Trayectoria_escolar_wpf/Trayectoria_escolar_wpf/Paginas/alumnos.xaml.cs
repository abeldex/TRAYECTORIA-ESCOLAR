using System;
using System.Windows;
using System.Windows.Controls;
using Negocio;
using System.Windows.Data;
using System.ComponentModel;
using System.Data;
using System.Collections.Generic;
using System.Windows.Input;
using System.Windows.Media;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Lógica de interacción para alumnos.xaml
    /// </summary>
    public partial class alumnos : Page
    {
        public alumnos()
        {
            InitializeComponent();
            Listar();
            
        }

        //metodo para listar todos los usuarios en el grid
        private void Listar()
        {
            //limpiamos el grid
            //dgvAlumnos.Items.Clear();
            //creamos un objeto de tipo backgroundworker
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
                dgvAlumnos.ItemsSource = ((DataTable)e.Result).DefaultView;

            }
            else if (e.Result is Exception)
            {

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

        private void worker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            
        }

        private void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            try
            {
                DataTable dt = ConvertToDataTable(new cn_alumnos().ListarAlumnos());
                e.Result = dt;
            }
            catch (Exception ex)
            {
                e.Result = ex;
            }
        }

        //metodo para buscar un alumno por su nombre o cuenta
        public void ListarBuscar(string cuenta)
        {
            try
            {
                dgvAlumnos.ItemsSource = new cn_alumnos().BuscarAlumno(cuenta);
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        private void Button_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {

        }
        //boton para buscar
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            buscar_alumno b = new buscar_alumno();
            b.ShowDialog();
            try
            {
                ListarBuscar(b.Cuenta);
            }
            catch (Exception error)
            {
                MessageBox.Show("Debe escribir un numero de cuenta");
            }
        }

        private void txt_search_TextChanged(object sender, TextChangedEventArgs e)
        {
           
        }
        //boton editar
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            editar_alumno ea = new editar_alumno();
            ea.Show();
        }

        private void dgvAlumnos_MouseDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            editar_alumno();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            this.Listar();
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            editar_alumno();
        }
        //metodo para editar un alumno seleccionado
        private void editar_alumno()
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock x = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock cohorte = dgvAlumnos.Columns[2].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock semestre = dgvAlumnos.Columns[3].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock grupo = dgvAlumnos.Columns[4].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock carrera = dgvAlumnos.Columns[5].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock turno = dgvAlumnos.Columns[6].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                if (x != null)
                {
                    //preguntamos si deseea editar 
                    MessageBoxResult result = MessageBox.Show("¿Desea editar el alumno: " + nombre.Text + " ?", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                    if (result == MessageBoxResult.Yes)
                    {
                        //abrimos la ventana de edicion mandando los valores obtenidos para que los recoga el contructor
                        editar_alumno ea = new editar_alumno(x.Text, nombre.Text, cohorte.Text, semestre.Text, grupo.Text, turno.Text, carrera.Text);
                        ea.ShowDialog();
                        //MessageBox.Show("ok");
                    }
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.Message);
            }
        }

        private void txt_search_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                try
                {
                    this.dgvAlumnos.ItemsSource = new cn_alumnos().BuscarAlumnoxNombre(txt_search.Text);
                }
                catch (Exception err)
                {
                    MessageBox.Show(err.Message);
                }
            }
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock x = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("¿Desea dar de baja a: " + nombre.Text + " ?", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().Baja(x.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
            
        }

        private void dgvAlumnos_LoadingRow(object sender, DataGridRowEventArgs e)
        {

        }

        private void MenuItem_Click_2(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock x = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar como desertor a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().Desertor(x.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
           
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            agregar_alumno al = new agregar_alumno();
            al.ShowDialog();
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            try
            {
                this.dgvAlumnos.ItemsSource = new cn_alumnos().BuscarAlumno_cohorte_grupo(cmbCohorte.Text, int.Parse(cmb_grupo.Text));
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un cohorte y grupo");
            }
        }

        private void MenuItem_Click_3(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock x = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar como rezagado a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().Rezagado(x.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");

            }
        }

        private void menu_egresado_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar como Egresado a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().MarcarEgresado(cuenta.Text);
                    egreso eg = new egreso(cuenta.Text);
                    eg.ShowDialog();
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
        }

        private void menu_titulado_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar como Titulado a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().Marcartitulado(cuenta.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
        }

        private void menu_eft_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar Eficiencia de Titulación a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().MarcarEficienciaT(cuenta.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
        }

        private void MenuItem_Click_4(object sender, RoutedEventArgs e)
        {

        }

        private void menu_ss_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar Servicio Social a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().MarcarServicio(cuenta.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
        }

        private void menu_pract_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;

                //preguntamos si deseea dar de baja
                MessageBoxResult result = MessageBox.Show("Marcar Practicas Profesionales a: " + nombre.Text + "", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    new cn_alumnos().MarcarPracticas(cuenta.Text);
                    Listar();
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Seleccione un alumno primero");
            }
        }

        private void MenuItem_Click_5(object sender, RoutedEventArgs e)
        {
            //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
            TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
            TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
            Verkardex vk = new Verkardex(cuenta.Text, nombre.Text);
            vk.Show();
        }

        private void MenuItem_Click_6(object sender, RoutedEventArgs e)
        {
            //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
            TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
            VerValoraciones vk = new VerValoraciones(cuenta.Text);
            vk.Show();
        }
    }

    
}

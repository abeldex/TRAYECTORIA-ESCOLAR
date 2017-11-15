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
using System.Text.RegularExpressions;
using Entidades;
using System.Data;
using System.Windows.Controls.Primitives;
using System.ComponentModel;
using MahApps.Metro.Controls;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Lógica de interacción para captura_extraordinarios.xaml
    /// </summary>
    public partial class captura_extraordinarios : MetroWindow
    {
        public captura_extraordinarios()
        {
            InitializeComponent();
            ListarMaestros();
            combo_carrera.SelectedIndex = 0;
            combo_profesor.SelectedIndex = 0;
            this.dgvAlumnos.CellEditEnding += dgvAlumnos_CellEditEnding;
        }

        public void ListarMaterias_carrera(int carrera)
        {
            try
            {
                combo_materia.ItemsSource = new cn_materias().ListarMAteriasxCarrera(carrera);
                combo_materia.SelectedValuePath = "idMateria";
                combo_materia.DisplayMemberPath = "NombreMateria";
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
        /// <summary>
        /// Metodo para listar todos los maestros
        /// </summary>
        public void ListarMaestros()
        {
            try
            {
                combo_profesor.ItemsSource = new cn_profesores().ListarMaestros();
                combo_profesor.SelectedValuePath = "id_maestro";
                combo_profesor.DisplayMemberPath = "nombre_maestro";
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        private void combo_carrera_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedTag = ((ComboBoxItem)combo_carrera.SelectedItem).Tag.ToString();
            ListarMaterias_carrera(int.Parse(selectedTag));
            combo_materia.SelectedIndex = 0;
            // MessageBox.Show(selectedTag);
            //cargar alumnos de esa carrera
            //dgvAlumnos.ItemsSource = new cn_alumnos().BuscarAlumno_cohorte_carrera(txt_cohorte.Text, int.Parse(selectedTag), int.Parse(txt_grupo.Text));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                //aqui debo llamar el metodo que muestres los alumnos reprobados de la cohorte materia y grupo
                dgvAlumnos.ItemsSource = new cn_folios_extraordinarios().ListarFolios(int.Parse(txt_periodo.Text), int.Parse(txt_grupo.Text), int.Parse(combo_materia.SelectedValue.ToString()));

            }
            catch (Exception error)
            {
                MessageBox.Show("Por favor ingrese una cohorte y un grupo válidos");
                //MessageBox.Show(error.Message);
            }
        }

        private void TextBox_PreviewTextInput_1(object sender, TextCompositionEventArgs e)
        {
            var textBox = sender as TextBox;
            e.Handled = Regex.IsMatch(e.Text, "[^0-9]+");
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            //preguntamos si deseea editar 
            MessageBoxResult result = MessageBox.Show("Se va generar el siguiente folio en la base de datos: " + txt_folio.Text + "\ncon las calificaciones capturadas\n ¿desea continuar?", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                GuardarFolio();
                GuardarCaificaciones();
            }
            //guardamos el folio y las calificaciones

            //GuardarCaificaciones();
        }

        //metodo para guardar el folio
        private void GuardarFolio()
        {
            try
            {
                //llenamos la clase folio_ordinarios que se va insertar 
                e_folios_extraordinarios f = new e_folios_extraordinarios("EX");
                f.folio = int.Parse(txt_folio.Text);
                f.cohorte = txt_cohorte.Text;
                f.periodo = int.Parse(txt_periodo.Text);
                f.grupo = int.Parse(txt_grupo.Text);
                f.fecha = txt_fecha.SelectedDate.Value;
                f.carrera = int.Parse(((ComboBoxItem)combo_carrera.SelectedItem).Tag.ToString());
                //f.carrera = int.Parse(this.combo_carrera.SelectedValue.ToString());
                f.materia = int.Parse(combo_materia.SelectedValue.ToString());
                f.maestro = int.Parse(combo_profesor.SelectedValue.ToString());
                //insertamos por medio de la clase de negocio folios
                
                //AQUI DEBEMOS LLAMAR EL METODO PARA GUARDAR FOLIOS EXTRAORDINARIOS
                new cn_folios_extraordinarios().Insertar(f);
                MessageBox.Show("Folio guardado correctamente:\n " + f.folio);
            }
            catch (Exception ww)
            {

                MessageBox.Show(ww.Message);
            }
        }

        //metodo para guardar cada una de las calificaciones en el datagridview
        private void GuardarCaificaciones()
        {
            string[] datos = new string[3];
            e_calificaciones cal = new e_calificaciones();
            cal.folio = int.Parse(txt_folio.Text);
            try
            {
                for (int i = 0; i < dgvAlumnos.Items.Count - 1; i++)
                {

                    for (int j = 0; j < dgvAlumnos.Columns.Count - 3; j++)
                    {
                        //loop throught cell
                        DataGridCell cell = GetCell(i, j);
                        TextBlock tb = cell.Content as TextBlock;
                        //MessageBox.Show(tb.Text);
                        //cachamos los valores de las celdas
                        datos[j] = tb.Text;
                    }
                    if (datos[2] != "")
                    {
                        cal.cuenta = datos[0];
                        cal.nombre = datos[1];
                        cal.calificacion = double.Parse(datos[2]);
                        //insertamos en la base de datos
                        new cn_calificaciones().Insertar_extra(cal);
                    }

                }
                //limpiamos los textbox
                txt_folio.Text = "";
                txt_cohorte.Text = "";
                txt_periodo.Text = "";
                txt_grupo.Text = "";
                txt_fecha.Text = "";
                //combo_carrera.SelectedIndex = -1;
                //combo_materia.SelectedIndex = -1;
                //combo_profesor.SelectedIndex = -1;
                dgvAlumnos.ItemsSource = null;
                dgvAlumnos.Items.Clear();
                dgvAlumnos.Items.Refresh();
                //dgvAlumnos.
            }
            catch (Exception e)
            {

                MessageBox.Show(e.Message);
            }
        }

        public DataGridCell GetCell(int row, int column)
        {
            DataGridRow rowContainer = GetRow(row);

            if (rowContainer != null)
            {
                DataGridCellsPresenter presenter = GetVisualChild<DataGridCellsPresenter>(rowContainer);

                DataGridCell cell = (DataGridCell)presenter.ItemContainerGenerator.ContainerFromIndex(column);
                if (cell == null)
                {
                    dgvAlumnos.ScrollIntoView(rowContainer, dgvAlumnos.Columns[column]);
                    cell = (DataGridCell)presenter.ItemContainerGenerator.ContainerFromIndex(column);
                }
                return cell;
            }
            return null;
        }

        public DataGridRow GetRow(int index)
        {
            DataGridRow row = (DataGridRow)dgvAlumnos.ItemContainerGenerator.ContainerFromIndex(index);
            if (row == null)
            {
                dgvAlumnos.UpdateLayout();
                dgvAlumnos.ScrollIntoView(dgvAlumnos.Items[index]);
                row = (DataGridRow)dgvAlumnos.ItemContainerGenerator.ContainerFromIndex(index);
            }
            return row;
        }

        public static T GetVisualChild<T>(Visual parent) where T : Visual
        {
            T child = default(T);
            int numVisuals = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < numVisuals; i++)
            {
                Visual v = (Visual)VisualTreeHelper.GetChild(parent, i);
                child = v as T;
                if (child == null)
                {
                    child = GetVisualChild<T>(v);
                }
                if (child != null)
                {
                    break;
                }
            }
            return child;
        }


        private void dgvAlumnos_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {

            string letra = "";
            TextBox t = e.EditingElement as TextBox;  // Assumes columns are all TextBoxes
            DataGridColumn dgc = e.Column;
            //(e.Row.Item as DataRowView).Row[2] = "a string that should be displayed immediatly";
            try
            {
                if (int.Parse(t.Text.ToString()) >= 0 && int.Parse(t.Text.ToString()) <= 10)
                {
                    var frameworkElement = this.dgvAlumnos.Columns[2].GetCellContent(e.Row);
                    frameworkElement.SetValue(TextBlock.TextProperty, t.Text.ToString());
                    switch (t.Text.ToString())
                    {
                        case "0": letra = "CERO"; break;
                        case "1": letra = "UNO"; break;
                        case "2": letra = "DOS"; break;
                        case "3": letra = "TRES"; break;
                        case "4": letra = "CUATRO"; break;
                        case "5": letra = "CINCO"; break;
                        case "6": letra = "SEIS"; break;
                        case "7": letra = "SIETE"; break;
                        case "8": letra = "OCHO"; break;
                        case "9": letra = "NUEVE"; break;
                        case "10": letra = "DIEZ"; break;
                    }

                    var element_letra = this.dgvAlumnos.Columns[3].GetCellContent(e.Row);
                    element_letra.SetValue(TextBlock.TextProperty, letra);
                }
                else
                {
                    //MessageBox.Show("Ingrese una calificacion entre 0 y 10");
                }
            }
            catch (Exception ee)
            {

                //MessageBox.Show(ee.Message);
            }



        }

        private void dgvAlumnos_BeginningEdit(object sender, DataGridBeginningEditEventArgs e)
        {

        }

        private void dgvAlumnos_CurrentCellChanged(object sender, EventArgs e)
        {

        }

        private void txt_periodo_GotFocus(object sender, RoutedEventArgs e)
        {
            txt_periodo.Text = "";
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            editar_alumno();
        }

        private void editar_alumno()
        {
            /*try
            {
                //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
                TextBlock x = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock nombre = dgvAlumnos.Columns[1].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                TextBlock turno = dgvAlumnos.Columns[5].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
                if (x != null)
                {
                    //preguntamos si deseea editar 
                    MessageBoxResult result = MessageBox.Show("¿Desea editar el alumno: " + nombre.Text + " ?", "Confirmar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                    if (result == MessageBoxResult.Yes)
                    {
                        //abrimos la ventana de edicion mandando los valores obtenidos para que los recoga el contructor
                        editar_alumno ea = new editar_alumno(x.Text, nombre.Text, txt_cohorte.Text, txt_periodo.Text, txt_grupo.Text, turno.Text, ((ComboBoxItem)combo_carrera.SelectedItem).Tag.ToString());
                        ea.ShowDialog();
                        //MessageBox.Show("ok");
                    }
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.Message);
            }*/
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            alumno_estado ee = new alumno_estado();
            ee.Show();
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            //obtenemos los valores las columnas de la fila seleccionada para enviarlas a la ventana de edicion
            TextBlock cuenta = dgvAlumnos.Columns[0].GetCellContent(dgvAlumnos.SelectedItem) as TextBlock;
            alumno_estado ee = new alumno_estado(cuenta.Text);
            ee.Show();
        }

        private void txt_grupo_GotFocus(object sender, RoutedEventArgs e)
        {

        }
    }
}

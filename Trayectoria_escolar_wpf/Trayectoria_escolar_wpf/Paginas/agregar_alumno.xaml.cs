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
using DAC;
using Negocio;
using Entidades;

namespace Trayectoria_escolar_wpf.Paginas
{
    /// <summary>
    /// Lógica de interacción para agregar_alumno.xaml
    /// </summary>
    public partial class agregar_alumno : Window
    {
        public agregar_alumno()
        {
            InitializeComponent();
            ListarEstados();
            FillPreparatorias();
            main = this;
        }

        internal static agregar_alumno main;
        internal string setPrepa
        {
            get { return txtPreparatoria.Text.ToString(); }
            set { Dispatcher.Invoke(new Action(() => { txtPreparatoria.Text = value; })); }
        }

        private void btn_guardar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_cancelar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        /// <summary>
        /// Método que llena el ComboBox de Estado de nacimiento y selecciona el valor por default (SELECCIONAR…).
        /// </summary>
        /// 

  
        private void cmbEstados_Loaded(object sender, RoutedEventArgs e)
        {
            
        }

        public void ListarEstados()
        {
            try
            {
                cmbEstados.ItemsSource = new cn_estados().ListarEstados();
                cmbEstados.SelectedValuePath = "id_estado";
                cmbEstados.DisplayMemberPath = "nombre";
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ListarMunicipio(int id)
        {
            try
            {
                cmbMunicipios.ItemsSource = new cn_municipio().ListarMunicipios(id);
                cmbMunicipios.SelectedValuePath = "id_municipio";
                cmbMunicipios.DisplayMemberPath = "nombre_municipio";
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        private void cmbEstados_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedTag = cmbEstados.SelectedValue.ToString();
            ListarMunicipio(int.Parse(selectedTag));
            cmbMunicipios.SelectedIndex = 0;
        }
        private void load_preparatorias()
        {

        }
        //abrimos el form para nueva prepa
        private void bnNuevaPrepa_Click(object sender, RoutedEventArgs e)
        {

            add_prepa ap = new add_prepa();
            ap.ShowDialog();
            FillPreparatorias();
        }

        //metodo para obtener el ID de una prepa por su nombre
        private void bnNuevaPrepa_Copy_Click(object sender, RoutedEventArgs e)
        {
            
        }
        //public int idPrepa = 0;
        public int ObtenerCodigoPrepa()
        {
            try
            {
                cn_preparatorias pp = new cn_preparatorias();
                List<Preparatorias> prepa = pp.GetPrepaID(txtPreparatoria.Text);
                //MessageBox.Show(prepa[0].idPreparatoria.ToString());
                return prepa[0].idPreparatoria;
            }
            catch (Exception)
            {
                return 0;
                // MessageBox.Show("Debe Seleccionar una Preparatoria");
                //throw;
            }
        }

        //inicializa el combobox de las preparatorias
        private void FillPreparatorias()
        {
            try
            {
                cmbPrepasUAS.ItemsSource = new cn_preparatorias().ListarUAS();
                cmbPreparatoriasOtras.ItemsSource = new cn_preparatorias().ListarNoUAS();

                cmbPrepasUAS.SelectedValuePath = "idPreparatoria";
                cmbPrepasUAS.DisplayMemberPath = "NombrePreparatoria";

                cmbPreparatoriasOtras.SelectedValuePath = "idPreparatoria";
                cmbPreparatoriasOtras.DisplayMemberPath = "NombrePreparatoria";

            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        private void cmbPrepasUAS_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void cmbPreparatoriasOtras_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void cmbPrepasUAS_DropDownClosed(object sender, EventArgs e)
        {
            txtPreparatoria.Text = cmbPrepasUAS.Text;
        }

        private void cmbPreparatoriasOtras_DropDownClosed(object sender, EventArgs e)
        {
            txtPreparatoria.Text = cmbPreparatoriasOtras.Text;
        }

        private void mtxtFechaNacimiento_KeyDown(object sender, KeyEventArgs e)
        {     
        }

        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            ///Metodo para guardar un alumno
            ///
            try
            {
                e_alumno al = new e_alumno();
                //informacion personal
                al.nombre = txtApellidoPaterno.Text + " " + txtApellidoMaterno.Text + " " + txtNombre.Text;
                al.sexo =char.Parse(((ComboBoxItem)cmbSexos.SelectedItem).Tag.ToString());
                al.fecha_nacimiento = mtxtFechaNacimiento.SelectedDate.Value;
                al.id_municipio = int.Parse(cmbMunicipios.SelectedValue.ToString());
                al.curp = txtCurp.Text;
                al.rfc = txtRFC.Text;
                al.direccion = txtDireccion.Text;
                al.celular = txtCelular.Text;
                al.telefono = txtTelefono.Text;
                al.correo = txtCorreo.Text;
                //informacion academica
                al.cuenta = txtCuenta.Text;
                al.cohorte = cmbCohorte.Text;
                al.id_semestre = int.Parse(cmb_semestre.Text);
                al.id_carrera = int.Parse(((ComboBoxItem)cmb_carrera.SelectedItem).Tag.ToString());
                al.id_grupo = int.Parse(cmb_grupo.Text);
                al.turno = cmb_turno.Text;
                al.fecha_ingreso = txtFEchaIngreso.SelectedDate.Value;
                //informacion de procedencia
                al.id_prepa = ObtenerCodigoPrepa();
                al.id_preparatoria = ObtenerCodigoPrepa();
                al.promedio_prepa = decimal.Parse(txtPromedioPrepa.Text);
                al.ceneval = decimal.Parse(txtPromedioCeneval.Text);
                //tutor
                al.tutor = txtNombreTutor.Text;
                al.telefono_tutor = txtTelefonoTutor.Text;
                al.direccion_tutor = txtDireccionTutor.Text;
                //otros
                al.seguro = "";
                al.tipo_seguro = "";
                al.lugar_origen = "";
                al.desertor = 0;
                al.baja = 0;
                al.rezagado = 0;
                al.egresado = "No";
                al.titulado = "No";
                al.eficiencia_titulacion = "No";
                al.servicio_social = "No";
                al.practicas = "No";
                new cn_alumnos().Insertar(al);
                MessageBox.Show("Alumno Guardado");
                this.Close();
            }
            catch (Exception err)
            {

                MessageBox.Show("Por favor no deje campos vacios\n" + err.Message);
            }
        }

        private void BtnCancelar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Entidades;
using Negocio;

namespace Trayectoria_Calificaciones
{
    public partial class FormCapturar : Form
    {
        public FormCapturar()
        {
            InitializeComponent();
            this.ControlBox = false;

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void FormCapturar_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'tRAYECTORIA_ESCOLARDataSet.Maestros' Puede moverla o quitarla según sea necesario.
            this.maestrosTableAdapter.Fill(this.tRAYECTORIA_ESCOLARDataSet.Maestros);
            // TODO: esta línea de código carga datos en la tabla 'tRAYECTORIA_ESCOLARDataSet.Carrera' Puede moverla o quitarla según sea necesario.
            this.carreraTableAdapter.Fill(this.tRAYECTORIA_ESCOLARDataSet.Carrera);
            //cargamos las materias de esa carrera de tronco comun
            this.materiasTableAdapter.Fill(this.tRAYECTORIA_ESCOLARDataSet.Materias,0);

        }

        private void combo_carrera_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cargamos las materias de esa carrera
            this.materiasTableAdapter.Fill(this.tRAYECTORIA_ESCOLARDataSet.Materias, int.Parse(this.combo_carrera.SelectedValue.ToString()));
            //actualizamos los campos del combo materia
            combo_materia.Refresh();
        }

        private void btnMostrarAlumnos_Click(object sender, EventArgs e)
        {
            //cargamos los alumnos con los datos correspondientes
            try
            {
                if (int.Parse(this.combo_carrera.SelectedValue.ToString()) == 0)
                    this.alumnoTableAdapter.Fill(this.tRAYECTORIA_ESCOLARDataSet.Alumno, lbl_cohorte.Text, int.Parse(this.lbl_grupo.Text));
                else
                    this.alumnoTableAdapter.FillByCarrera(this.tRAYECTORIA_ESCOLARDataSet.Alumno, lbl_cohorte.Text, int.Parse(this.lbl_grupo.Text), int.Parse(this.combo_carrera.SelectedValue.ToString()));
                setRowNumber(dataGridCalificaciones);
            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.Message);
            }

        }

        private void fillByCarreraToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.alumnoTableAdapter.FillByCarrera(this.tRAYECTORIA_ESCOLARDataSet.Alumno, cohorteToolStripTextBox.Text, new System.Nullable<int>(((int)(System.Convert.ChangeType(grupoToolStripTextBox.Text, typeof(int))))), new System.Nullable<int>(((int)(System.Convert.ChangeType(carreraToolStripTextBox.Text, typeof(int))))));
                setRowNumber(dataGridCalificaciones);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void btn_guardar_Click(object sender, EventArgs e)
        {
            //guardamos el folio y las calificaciones
            GuardarFolio();
            GuardarCaificaciones();
        }

        private void dataGridCalificaciones_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            //this.Close();
            MessageBox.Show("no deje calificaciones vacias");
        }

        private void Salir_Click(object sender, EventArgs e)
        {
            combo_carrera.Dispose();
            combo_materia.Dispose();
            combo_profesor.Dispose();
            //dataGridCalificaciones.Dispose();
            Application.Exit();
        }

        private void GuardarFolio()
        {
            try
            {
                //llenamos la clase folio_ordinarios que se va insertar 
                e_folios_ordinarios f = new e_folios_ordinarios("OR");
                f.folio = int.Parse(lbl_folio.Text);
                f.cohorte = lbl_cohorte.Text;
                f.periodo = int.Parse(lbl_periodo.Text);
                f.grupo = int.Parse(lbl_grupo.Text);
                f.fecha = Convert.ToDateTime(lbl_fecha.Text);
                f.carrera = int.Parse(this.combo_carrera.SelectedValue.ToString());
                f.materia = int.Parse(combo_materia.SelectedValue.ToString());
                f.maestro = int.Parse(combo_profesor.SelectedValue.ToString());
                //insertamos por medio de la clase de negocio folios
                new cn_folios_ordinarios().Insertar(f);
                //MessageBox.Show("Folio guardado: " + f.folio);
            }
            catch (Exception ww)
            {

                MessageBox.Show(ww.Message);
            }
        }
        //metodo para guardar cada una de las calificaciones en el datagridview
        private void GuardarCaificaciones()
        {
            e_calificaciones cal = new e_calificaciones();
            cal.folio = int.Parse(lbl_folio.Text);

            try
            {
                foreach (DataGridViewRow dr in dataGridCalificaciones.Rows)
                {
                    DataGridViewCell cell = dr.Cells["col_calificacion"];
                    //si la columna de calificaciones tiene valores vacios los omitira
                    if (cell.Value != null)
                    {
                        //llenamos nuestro objeto de calificaciones con cada fila del datagridview
                        cal.cuenta = dr.Cells["nUMERODECUENTADataGridViewTextBoxColumn"].Value.ToString();
                        cal.nombre = dr.Cells["nOMBREDELALUMNODataGridViewTextBoxColumn"].Value.ToString();
                        cal.calificacion = double.Parse(dr.Cells["col_calificacion"].Value.ToString());
                        //insertamos en la base de datos
                        new cn_calificaciones().Insertar(cal);
                    }                  
                }
            }
            catch (Exception e)
            {

                MessageBox.Show(e.Message);
            }
        }
        //mostrar contador de filas
        private void setRowNumber(DataGridView dgv)
        {
            foreach (DataGridViewRow row in dgv.Rows)
            {
                row.HeaderCell.Value = (row.Index + 1).ToString();
            }
            dgv.AutoResizeRowHeadersWidth(DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders);

        }

        private void dataGridCalificaciones_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridCalificaciones_EditingControlShowing(object sender, DataGridViewEditingControlShowingEventArgs e)
        {
 
        }

        private void dataGridCalificaciones_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            //dataGridCalificaciones.CurrentCell.Style.BackColor = Color.YellowGreen;
        }
    }
}

namespace Trayectoria_Calificaciones
{
    partial class FormCapturar
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormCapturar));
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lollipopLabel1 = new LollipopLabel();
            this.combo_carrera = new System.Windows.Forms.ComboBox();
            this.carreraBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tRAYECTORIA_ESCOLARDataSet = new Trayectoria_Calificaciones.TRAYECTORIA_ESCOLARDataSet();
            this.combo_materia = new System.Windows.Forms.ComboBox();
            this.materiasBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tRAYECTORIAESCOLARDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.combo_profesor = new System.Windows.Forms.ComboBox();
            this.maestrosBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataGridCalificaciones = new System.Windows.Forms.DataGridView();
            this.nUMERODECUENTADataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nOMBREDELALUMNODataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_calificacion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.alumnoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.carreraTableAdapter = new Trayectoria_Calificaciones.TRAYECTORIA_ESCOLARDataSetTableAdapters.CarreraTableAdapter();
            this.materiasTableAdapter = new Trayectoria_Calificaciones.TRAYECTORIA_ESCOLARDataSetTableAdapters.MateriasTableAdapter();
            this.maestrosTableAdapter = new Trayectoria_Calificaciones.TRAYECTORIA_ESCOLARDataSetTableAdapters.MaestrosTableAdapter();
            this.alumnoTableAdapter = new Trayectoria_Calificaciones.TRAYECTORIA_ESCOLARDataSetTableAdapters.AlumnoTableAdapter();
            this.fillByCarreraToolStrip = new System.Windows.Forms.ToolStrip();
            this.cohorteToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.cohorteToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.grupoToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.grupoToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.carreraToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.carreraToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.fillByCarreraToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.Salir = new LollipopButton();
            this.btn_guardar = new LollipopButton();
            this.btnMostrarAlumnos = new LollipopButton();
            this.lbl_fecha = new LollipopTextBox();
            this.lollipopLabel11 = new LollipopLabel();
            this.lollipopLabel10 = new LollipopLabel();
            this.lbl_grupo = new LollipopTextBox();
            this.lbl_cohorte = new LollipopTextBox();
            this.lollipopLabel9 = new LollipopLabel();
            this.lollipopLabel8 = new LollipopLabel();
            this.lbl_periodo = new LollipopTextBox();
            this.lollipopLabel7 = new LollipopLabel();
            this.lollipopLabel6 = new LollipopLabel();
            this.lollipopLabel5 = new LollipopLabel();
            this.lbl_folio = new LollipopTextBox();
            this.lollipopLabel4 = new LollipopLabel();
            this.lollipopLabel3 = new LollipopLabel();
            this.lollipopLabel2 = new LollipopLabel();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.carreraBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tRAYECTORIA_ESCOLARDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.materiasBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tRAYECTORIAESCOLARDataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.maestrosBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridCalificaciones)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alumnoBindingSource)).BeginInit();
            this.fillByCarreraToolStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::Trayectoria_Calificaciones.Properties.Resources.logo_uas_geodew;
            this.pictureBox1.Location = new System.Drawing.Point(0, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(302, 70);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BackgroundImage = global::Trayectoria_Calificaciones.Properties.Resources.back_title1;
            this.panel1.Controls.Add(this.lollipopLabel1);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(823, 79);
            this.panel1.TabIndex = 1;
            // 
            // lollipopLabel1
            // 
            this.lollipopLabel1.AutoSize = true;
            this.lollipopLabel1.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.lollipopLabel1.ForeColor = System.Drawing.Color.White;
            this.lollipopLabel1.Location = new System.Drawing.Point(393, 28);
            this.lollipopLabel1.Name = "lollipopLabel1";
            this.lollipopLabel1.Size = new System.Drawing.Size(382, 25);
            this.lollipopLabel1.TabIndex = 1;
            this.lollipopLabel1.Text = "SISTEMA DE TRAYECTORIA ESCOLAR";
            // 
            // combo_carrera
            // 
            this.combo_carrera.DataSource = this.carreraBindingSource;
            this.combo_carrera.DisplayMember = "NombreCarrera";
            this.combo_carrera.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.combo_carrera.FormattingEnabled = true;
            this.combo_carrera.Location = new System.Drawing.Point(148, 116);
            this.combo_carrera.Name = "combo_carrera";
            this.combo_carrera.Size = new System.Drawing.Size(360, 24);
            this.combo_carrera.TabIndex = 16;
            this.combo_carrera.ValueMember = "idCarrera";
            this.combo_carrera.SelectedIndexChanged += new System.EventHandler(this.combo_carrera_SelectedIndexChanged);
            // 
            // carreraBindingSource
            // 
            this.carreraBindingSource.DataMember = "Carrera";
            this.carreraBindingSource.DataSource = this.tRAYECTORIA_ESCOLARDataSet;
            // 
            // tRAYECTORIA_ESCOLARDataSet
            // 
            this.tRAYECTORIA_ESCOLARDataSet.DataSetName = "TRAYECTORIA_ESCOLARDataSet";
            this.tRAYECTORIA_ESCOLARDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // combo_materia
            // 
            this.combo_materia.DataSource = this.materiasBindingSource;
            this.combo_materia.DisplayMember = "NombreMateria";
            this.combo_materia.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.combo_materia.FormattingEnabled = true;
            this.combo_materia.Location = new System.Drawing.Point(148, 147);
            this.combo_materia.Name = "combo_materia";
            this.combo_materia.Size = new System.Drawing.Size(360, 24);
            this.combo_materia.TabIndex = 18;
            this.combo_materia.ValueMember = "idMateria";
            // 
            // materiasBindingSource
            // 
            this.materiasBindingSource.DataMember = "Materias";
            this.materiasBindingSource.DataSource = this.tRAYECTORIAESCOLARDataSetBindingSource;
            // 
            // tRAYECTORIAESCOLARDataSetBindingSource
            // 
            this.tRAYECTORIAESCOLARDataSetBindingSource.DataSource = this.tRAYECTORIA_ESCOLARDataSet;
            this.tRAYECTORIAESCOLARDataSetBindingSource.Position = 0;
            // 
            // combo_profesor
            // 
            this.combo_profesor.DataSource = this.maestrosBindingSource;
            this.combo_profesor.DisplayMember = "nombre_maestro";
            this.combo_profesor.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.combo_profesor.FormattingEnabled = true;
            this.combo_profesor.Location = new System.Drawing.Point(148, 179);
            this.combo_profesor.Name = "combo_profesor";
            this.combo_profesor.Size = new System.Drawing.Size(360, 24);
            this.combo_profesor.TabIndex = 21;
            this.combo_profesor.ValueMember = "id_maestro";
            // 
            // maestrosBindingSource
            // 
            this.maestrosBindingSource.DataMember = "Maestros";
            this.maestrosBindingSource.DataSource = this.tRAYECTORIAESCOLARDataSetBindingSource;
            // 
            // dataGridCalificaciones
            // 
            this.dataGridCalificaciones.AllowUserToAddRows = false;
            this.dataGridCalificaciones.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dataGridCalificaciones.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridCalificaciones.AutoGenerateColumns = false;
            this.dataGridCalificaciones.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridCalificaciones.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridCalificaciones.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridCalificaciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridCalificaciones.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nUMERODECUENTADataGridViewTextBoxColumn,
            this.nOMBREDELALUMNODataGridViewTextBoxColumn,
            this.col_calificacion});
            this.dataGridCalificaciones.DataSource = this.alumnoBindingSource;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridCalificaciones.DefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridCalificaciones.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.dataGridCalificaciones.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.dataGridCalificaciones.Location = new System.Drawing.Point(15, 243);
            this.dataGridCalificaciones.Name = "dataGridCalificaciones";
            this.dataGridCalificaciones.Size = new System.Drawing.Size(786, 411);
            this.dataGridCalificaciones.TabIndex = 19;
            this.dataGridCalificaciones.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridCalificaciones_CellContentClick);
            this.dataGridCalificaciones.CellEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridCalificaciones_CellEnter);
            this.dataGridCalificaciones.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.dataGridCalificaciones_DataError);
            this.dataGridCalificaciones.EditingControlShowing += new System.Windows.Forms.DataGridViewEditingControlShowingEventHandler(this.dataGridCalificaciones_EditingControlShowing);
            // 
            // nUMERODECUENTADataGridViewTextBoxColumn
            // 
            this.nUMERODECUENTADataGridViewTextBoxColumn.DataPropertyName = "NUMERO DE CUENTA";
            this.nUMERODECUENTADataGridViewTextBoxColumn.HeaderText = "NUMERO DE CUENTA";
            this.nUMERODECUENTADataGridViewTextBoxColumn.Name = "nUMERODECUENTADataGridViewTextBoxColumn";
            this.nUMERODECUENTADataGridViewTextBoxColumn.ReadOnly = true;
            this.nUMERODECUENTADataGridViewTextBoxColumn.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // nOMBREDELALUMNODataGridViewTextBoxColumn
            // 
            this.nOMBREDELALUMNODataGridViewTextBoxColumn.DataPropertyName = "NOMBRE DEL ALUMNO";
            this.nOMBREDELALUMNODataGridViewTextBoxColumn.FillWeight = 261.8597F;
            this.nOMBREDELALUMNODataGridViewTextBoxColumn.HeaderText = "NOMBRE DEL ALUMNO";
            this.nOMBREDELALUMNODataGridViewTextBoxColumn.Name = "nOMBREDELALUMNODataGridViewTextBoxColumn";
            this.nOMBREDELALUMNODataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // col_calificacion
            // 
            this.col_calificacion.FillWeight = 58.19104F;
            this.col_calificacion.HeaderText = "CALIFICACIÓN";
            this.col_calificacion.Name = "col_calificacion";
            // 
            // alumnoBindingSource
            // 
            this.alumnoBindingSource.DataMember = "Alumno";
            this.alumnoBindingSource.DataSource = this.tRAYECTORIAESCOLARDataSetBindingSource;
            // 
            // carreraTableAdapter
            // 
            this.carreraTableAdapter.ClearBeforeFill = true;
            // 
            // materiasTableAdapter
            // 
            this.materiasTableAdapter.ClearBeforeFill = true;
            // 
            // maestrosTableAdapter
            // 
            this.maestrosTableAdapter.ClearBeforeFill = true;
            // 
            // alumnoTableAdapter
            // 
            this.alumnoTableAdapter.ClearBeforeFill = true;
            // 
            // fillByCarreraToolStrip
            // 
            this.fillByCarreraToolStrip.Dock = System.Windows.Forms.DockStyle.None;
            this.fillByCarreraToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cohorteToolStripLabel,
            this.cohorteToolStripTextBox,
            this.grupoToolStripLabel,
            this.grupoToolStripTextBox,
            this.carreraToolStripLabel,
            this.carreraToolStripTextBox,
            this.fillByCarreraToolStripButton});
            this.fillByCarreraToolStrip.Location = new System.Drawing.Point(15, 243);
            this.fillByCarreraToolStrip.Name = "fillByCarreraToolStrip";
            this.fillByCarreraToolStrip.Size = new System.Drawing.Size(534, 25);
            this.fillByCarreraToolStrip.TabIndex = 25;
            this.fillByCarreraToolStrip.Text = "fillByCarreraToolStrip";
            this.fillByCarreraToolStrip.Visible = false;
            // 
            // cohorteToolStripLabel
            // 
            this.cohorteToolStripLabel.Name = "cohorteToolStripLabel";
            this.cohorteToolStripLabel.Size = new System.Drawing.Size(51, 22);
            this.cohorteToolStripLabel.Text = "cohorte:";
            // 
            // cohorteToolStripTextBox
            // 
            this.cohorteToolStripTextBox.Name = "cohorteToolStripTextBox";
            this.cohorteToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // grupoToolStripLabel
            // 
            this.grupoToolStripLabel.Name = "grupoToolStripLabel";
            this.grupoToolStripLabel.Size = new System.Drawing.Size(42, 22);
            this.grupoToolStripLabel.Text = "grupo:";
            // 
            // grupoToolStripTextBox
            // 
            this.grupoToolStripTextBox.Name = "grupoToolStripTextBox";
            this.grupoToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // carreraToolStripLabel
            // 
            this.carreraToolStripLabel.Name = "carreraToolStripLabel";
            this.carreraToolStripLabel.Size = new System.Drawing.Size(46, 22);
            this.carreraToolStripLabel.Text = "carrera:";
            // 
            // carreraToolStripTextBox
            // 
            this.carreraToolStripTextBox.Name = "carreraToolStripTextBox";
            this.carreraToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // fillByCarreraToolStripButton
            // 
            this.fillByCarreraToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.fillByCarreraToolStripButton.Name = "fillByCarreraToolStripButton";
            this.fillByCarreraToolStripButton.Size = new System.Drawing.Size(77, 22);
            this.fillByCarreraToolStripButton.Text = "FillByCarrera";
            this.fillByCarreraToolStripButton.Click += new System.EventHandler(this.fillByCarreraToolStripButton_Click);
            // 
            // Salir
            // 
            this.Salir.BackColor = System.Drawing.Color.Transparent;
            this.Salir.BGColor = "#DCDCDC";
            this.Salir.FontColor = "#010101";
            this.Salir.Location = new System.Drawing.Point(690, 183);
            this.Salir.Name = "Salir";
            this.Salir.Size = new System.Drawing.Size(113, 41);
            this.Salir.TabIndex = 24;
            this.Salir.Text = "Salir";
            this.Salir.Click += new System.EventHandler(this.Salir_Click);
            // 
            // btn_guardar
            // 
            this.btn_guardar.BackColor = System.Drawing.Color.Transparent;
            this.btn_guardar.BGColor = "#24c940";
            this.btn_guardar.FontColor = "#ffffff";
            this.btn_guardar.Location = new System.Drawing.Point(690, 136);
            this.btn_guardar.Name = "btn_guardar";
            this.btn_guardar.Size = new System.Drawing.Size(113, 41);
            this.btn_guardar.TabIndex = 23;
            this.btn_guardar.Text = "Guardar";
            this.btn_guardar.Click += new System.EventHandler(this.btn_guardar_Click);
            // 
            // btnMostrarAlumnos
            // 
            this.btnMostrarAlumnos.BackColor = System.Drawing.Color.Transparent;
            this.btnMostrarAlumnos.BGColor = "#508ef5";
            this.btnMostrarAlumnos.FontColor = "#ffffff";
            this.btnMostrarAlumnos.Location = new System.Drawing.Point(690, 89);
            this.btnMostrarAlumnos.Name = "btnMostrarAlumnos";
            this.btnMostrarAlumnos.Size = new System.Drawing.Size(113, 41);
            this.btnMostrarAlumnos.TabIndex = 22;
            this.btnMostrarAlumnos.Text = "Mostrar Alumnos";
            this.btnMostrarAlumnos.Click += new System.EventHandler(this.btnMostrarAlumnos_Click);
            // 
            // lbl_fecha
            // 
            this.lbl_fecha.FocusedColor = "#508ef5";
            this.lbl_fecha.FontColor = "#080808";
            this.lbl_fecha.IsEnabled = true;
            this.lbl_fecha.Location = new System.Drawing.Point(579, 200);
            this.lbl_fecha.MaxLength = 32767;
            this.lbl_fecha.Multiline = false;
            this.lbl_fecha.Name = "lbl_fecha";
            this.lbl_fecha.ReadOnly = false;
            this.lbl_fecha.Size = new System.Drawing.Size(92, 24);
            this.lbl_fecha.TabIndex = 15;
            this.lbl_fecha.TextAlignment = System.Windows.Forms.HorizontalAlignment.Center;
            this.lbl_fecha.UseSystemPasswordChar = false;
            // 
            // lollipopLabel11
            // 
            this.lollipopLabel11.AutoSize = true;
            this.lollipopLabel11.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel11.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel11.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel11.Location = new System.Drawing.Point(521, 207);
            this.lollipopLabel11.Name = "lollipopLabel11";
            this.lollipopLabel11.Size = new System.Drawing.Size(57, 17);
            this.lollipopLabel11.TabIndex = 20;
            this.lollipopLabel11.Text = "FECHA:";
            // 
            // lollipopLabel10
            // 
            this.lollipopLabel10.AutoSize = true;
            this.lollipopLabel10.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel10.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel10.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel10.Location = new System.Drawing.Point(12, 183);
            this.lollipopLabel10.Name = "lollipopLabel10";
            this.lollipopLabel10.Size = new System.Drawing.Size(89, 17);
            this.lollipopLabel10.TabIndex = 17;
            this.lollipopLabel10.Text = "PROFESOR:";
            // 
            // lbl_grupo
            // 
            this.lbl_grupo.FocusedColor = "#508ef5";
            this.lbl_grupo.FontColor = "#080808";
            this.lbl_grupo.IsEnabled = true;
            this.lbl_grupo.Location = new System.Drawing.Point(608, 170);
            this.lbl_grupo.MaxLength = 32767;
            this.lbl_grupo.Multiline = false;
            this.lbl_grupo.Name = "lbl_grupo";
            this.lbl_grupo.ReadOnly = false;
            this.lbl_grupo.Size = new System.Drawing.Size(63, 24);
            this.lbl_grupo.TabIndex = 12;
            this.lbl_grupo.TextAlignment = System.Windows.Forms.HorizontalAlignment.Left;
            this.lbl_grupo.UseSystemPasswordChar = false;
            // 
            // lbl_cohorte
            // 
            this.lbl_cohorte.FocusedColor = "#508ef5";
            this.lbl_cohorte.FontColor = "#080808";
            this.lbl_cohorte.IsEnabled = true;
            this.lbl_cohorte.Location = new System.Drawing.Point(608, 114);
            this.lbl_cohorte.MaxLength = 32767;
            this.lbl_cohorte.Multiline = false;
            this.lbl_cohorte.Name = "lbl_cohorte";
            this.lbl_cohorte.ReadOnly = false;
            this.lbl_cohorte.Size = new System.Drawing.Size(63, 24);
            this.lbl_cohorte.TabIndex = 7;
            this.lbl_cohorte.TextAlignment = System.Windows.Forms.HorizontalAlignment.Left;
            this.lbl_cohorte.UseSystemPasswordChar = false;
            // 
            // lollipopLabel9
            // 
            this.lollipopLabel9.AutoSize = true;
            this.lollipopLabel9.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel9.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel9.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel9.Location = new System.Drawing.Point(521, 121);
            this.lollipopLabel9.Name = "lollipopLabel9";
            this.lollipopLabel9.Size = new System.Drawing.Size(81, 17);
            this.lollipopLabel9.TabIndex = 14;
            this.lollipopLabel9.Text = "COHORTE:";
            // 
            // lollipopLabel8
            // 
            this.lollipopLabel8.AutoSize = true;
            this.lollipopLabel8.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel8.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel8.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel8.Location = new System.Drawing.Point(521, 177);
            this.lollipopLabel8.Name = "lollipopLabel8";
            this.lollipopLabel8.Size = new System.Drawing.Size(63, 17);
            this.lollipopLabel8.TabIndex = 13;
            this.lollipopLabel8.Text = "GRUPO:";
            // 
            // lbl_periodo
            // 
            this.lbl_periodo.FocusedColor = "#508ef5";
            this.lbl_periodo.FontColor = "#080808";
            this.lbl_periodo.IsEnabled = true;
            this.lbl_periodo.Location = new System.Drawing.Point(608, 144);
            this.lbl_periodo.MaxLength = 32767;
            this.lbl_periodo.Multiline = false;
            this.lbl_periodo.Name = "lbl_periodo";
            this.lbl_periodo.ReadOnly = false;
            this.lbl_periodo.Size = new System.Drawing.Size(63, 24);
            this.lbl_periodo.TabIndex = 10;
            this.lbl_periodo.TextAlignment = System.Windows.Forms.HorizontalAlignment.Left;
            this.lbl_periodo.UseSystemPasswordChar = false;
            // 
            // lollipopLabel7
            // 
            this.lollipopLabel7.AutoSize = true;
            this.lollipopLabel7.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel7.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel7.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel7.Location = new System.Drawing.Point(521, 149);
            this.lollipopLabel7.Name = "lollipopLabel7";
            this.lollipopLabel7.Size = new System.Drawing.Size(75, 17);
            this.lollipopLabel7.TabIndex = 11;
            this.lollipopLabel7.Text = "PERIODO:";
            // 
            // lollipopLabel6
            // 
            this.lollipopLabel6.AutoSize = true;
            this.lollipopLabel6.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel6.Location = new System.Drawing.Point(12, 150);
            this.lollipopLabel6.Name = "lollipopLabel6";
            this.lollipopLabel6.Size = new System.Drawing.Size(72, 17);
            this.lollipopLabel6.TabIndex = 9;
            this.lollipopLabel6.Text = "MATERIA:";
            // 
            // lollipopLabel5
            // 
            this.lollipopLabel5.AutoSize = true;
            this.lollipopLabel5.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel5.Location = new System.Drawing.Point(12, 120);
            this.lollipopLabel5.Name = "lollipopLabel5";
            this.lollipopLabel5.Size = new System.Drawing.Size(78, 17);
            this.lollipopLabel5.TabIndex = 6;
            this.lollipopLabel5.Text = "CARRERA:";
            // 
            // lbl_folio
            // 
            this.lbl_folio.FocusedColor = "#508ef5";
            this.lbl_folio.FontColor = "#fd2525";
            this.lbl_folio.IsEnabled = true;
            this.lbl_folio.Location = new System.Drawing.Point(579, 89);
            this.lbl_folio.MaxLength = 32767;
            this.lbl_folio.Multiline = false;
            this.lbl_folio.Name = "lbl_folio";
            this.lbl_folio.ReadOnly = false;
            this.lbl_folio.Size = new System.Drawing.Size(92, 24);
            this.lbl_folio.TabIndex = 5;
            this.lbl_folio.TextAlignment = System.Windows.Forms.HorizontalAlignment.Left;
            this.lbl_folio.UseSystemPasswordChar = false;
            // 
            // lollipopLabel4
            // 
            this.lollipopLabel4.AutoSize = true;
            this.lollipopLabel4.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel4.Location = new System.Drawing.Point(521, 93);
            this.lollipopLabel4.Name = "lollipopLabel4";
            this.lollipopLabel4.Size = new System.Drawing.Size(53, 17);
            this.lollipopLabel4.TabIndex = 4;
            this.lollipopLabel4.Text = "FOLIO:";
            // 
            // lollipopLabel3
            // 
            this.lollipopLabel3.AutoSize = true;
            this.lollipopLabel3.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel3.Location = new System.Drawing.Point(145, 91);
            this.lollipopLabel3.Name = "lollipopLabel3";
            this.lollipopLabel3.Size = new System.Drawing.Size(363, 17);
            this.lollipopLabel3.TabIndex = 3;
            this.lollipopLabel3.Text = "FACULTAD DE CIENCIAS DE LA TIERRA Y EL ESPACIO";
            // 
            // lollipopLabel2
            // 
            this.lollipopLabel2.AutoSize = true;
            this.lollipopLabel2.BackColor = System.Drawing.Color.Transparent;
            this.lollipopLabel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lollipopLabel2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lollipopLabel2.Location = new System.Drawing.Point(12, 91);
            this.lollipopLabel2.Name = "lollipopLabel2";
            this.lollipopLabel2.Size = new System.Drawing.Size(75, 17);
            this.lollipopLabel2.TabIndex = 2;
            this.lollipopLabel2.Text = "ESCUELA:";
            // 
            // FormCapturar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(823, 666);
            this.Controls.Add(this.fillByCarreraToolStrip);
            this.Controls.Add(this.Salir);
            this.Controls.Add(this.btn_guardar);
            this.Controls.Add(this.btnMostrarAlumnos);
            this.Controls.Add(this.lbl_fecha);
            this.Controls.Add(this.lollipopLabel11);
            this.Controls.Add(this.dataGridCalificaciones);
            this.Controls.Add(this.combo_profesor);
            this.Controls.Add(this.lollipopLabel10);
            this.Controls.Add(this.lbl_grupo);
            this.Controls.Add(this.lbl_cohorte);
            this.Controls.Add(this.lollipopLabel9);
            this.Controls.Add(this.lollipopLabel8);
            this.Controls.Add(this.lbl_periodo);
            this.Controls.Add(this.lollipopLabel7);
            this.Controls.Add(this.combo_materia);
            this.Controls.Add(this.lollipopLabel6);
            this.Controls.Add(this.combo_carrera);
            this.Controls.Add(this.lollipopLabel5);
            this.Controls.Add(this.lbl_folio);
            this.Controls.Add(this.lollipopLabel4);
            this.Controls.Add(this.lollipopLabel3);
            this.Controls.Add(this.lollipopLabel2);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormCapturar";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Captura de Actas | Exámenes ordinarios";
            this.Load += new System.EventHandler(this.FormCapturar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.carreraBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tRAYECTORIA_ESCOLARDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.materiasBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tRAYECTORIAESCOLARDataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.maestrosBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridCalificaciones)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alumnoBindingSource)).EndInit();
            this.fillByCarreraToolStrip.ResumeLayout(false);
            this.fillByCarreraToolStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel1;
        private LollipopLabel lollipopLabel1;
        private LollipopLabel lollipopLabel2;
        private LollipopLabel lollipopLabel3;
        private LollipopLabel lollipopLabel4;
        private LollipopTextBox lbl_folio;
        private LollipopLabel lollipopLabel5;
        private System.Windows.Forms.ComboBox combo_carrera;
        private LollipopLabel lollipopLabel6;
        private System.Windows.Forms.ComboBox combo_materia;
        private LollipopLabel lollipopLabel7;
        private LollipopTextBox lbl_periodo;
        private LollipopLabel lollipopLabel8;
        private LollipopLabel lollipopLabel9;
        private LollipopTextBox lbl_cohorte;
        private LollipopTextBox lbl_grupo;
        private LollipopLabel lollipopLabel10;
        private System.Windows.Forms.ComboBox combo_profesor;
        private System.Windows.Forms.DataGridView dataGridCalificaciones;
        private TRAYECTORIA_ESCOLARDataSet tRAYECTORIA_ESCOLARDataSet;
        private System.Windows.Forms.BindingSource carreraBindingSource;
        private TRAYECTORIA_ESCOLARDataSetTableAdapters.CarreraTableAdapter carreraTableAdapter;
        private System.Windows.Forms.BindingSource tRAYECTORIAESCOLARDataSetBindingSource;
        private System.Windows.Forms.BindingSource materiasBindingSource;
        private TRAYECTORIA_ESCOLARDataSetTableAdapters.MateriasTableAdapter materiasTableAdapter;
        private System.Windows.Forms.BindingSource maestrosBindingSource;
        private TRAYECTORIA_ESCOLARDataSetTableAdapters.MaestrosTableAdapter maestrosTableAdapter;
        private LollipopLabel lollipopLabel11;
        private LollipopTextBox lbl_fecha;
        private LollipopButton btnMostrarAlumnos;
        private System.Windows.Forms.BindingSource alumnoBindingSource;
        private TRAYECTORIA_ESCOLARDataSetTableAdapters.AlumnoTableAdapter alumnoTableAdapter;
        private LollipopButton btn_guardar;
        private LollipopButton Salir;
        private System.Windows.Forms.ToolStrip fillByCarreraToolStrip;
        private System.Windows.Forms.ToolStripLabel cohorteToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox cohorteToolStripTextBox;
        private System.Windows.Forms.ToolStripLabel grupoToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox grupoToolStripTextBox;
        private System.Windows.Forms.ToolStripLabel carreraToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox carreraToolStripTextBox;
        private System.Windows.Forms.ToolStripButton fillByCarreraToolStripButton;
        private System.Windows.Forms.DataGridViewTextBoxColumn nUMERODECUENTADataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nOMBREDELALUMNODataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_calificacion;
    }
}
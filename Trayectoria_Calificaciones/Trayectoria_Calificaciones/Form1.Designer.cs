namespace Trayectoria_Calificaciones
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.cb_hojas = new System.Windows.Forms.ComboBox();
            this.lollipopButton2 = new LollipopButton();
            this.lollipopButton1 = new LollipopButton();
            this.lollipopButtonCargar = new LollipopButton();
            this.txt_excel = new LollipopTextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.White;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dataGridView1.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(16, 60);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(805, 600);
            this.dataGridView1.TabIndex = 3;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::Trayectoria_Calificaciones.Properties.Resources.excel_8;
            this.pictureBox1.Location = new System.Drawing.Point(13, 4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(45, 49);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 10;
            this.pictureBox1.TabStop = false;
            // 
            // cb_hojas
            // 
            this.cb_hojas.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.cb_hojas.FormattingEnabled = true;
            this.cb_hojas.Location = new System.Drawing.Point(412, 18);
            this.cb_hojas.Name = "cb_hojas";
            this.cb_hojas.Size = new System.Drawing.Size(171, 24);
            this.cb_hojas.TabIndex = 13;
            this.cb_hojas.Text = "Seleccione una hoja";
            // 
            // lollipopButton2
            // 
            this.lollipopButton2.BackColor = System.Drawing.Color.Transparent;
            this.lollipopButton2.BGColor = "#70980C";
            this.lollipopButton2.FontColor = "#ffffff";
            this.lollipopButton2.Location = new System.Drawing.Point(718, 11);
            this.lollipopButton2.Name = "lollipopButton2";
            this.lollipopButton2.Size = new System.Drawing.Size(103, 41);
            this.lollipopButton2.TabIndex = 12;
            this.lollipopButton2.Text = "GUARDAR";
            this.lollipopButton2.Click += new System.EventHandler(this.lollipopButton2_Click);
            // 
            // lollipopButton1
            // 
            this.lollipopButton1.BackColor = System.Drawing.Color.Transparent;
            this.lollipopButton1.BGColor = "#508ef5";
            this.lollipopButton1.FontColor = "#ffffff";
            this.lollipopButton1.Location = new System.Drawing.Point(600, 10);
            this.lollipopButton1.Name = "lollipopButton1";
            this.lollipopButton1.Size = new System.Drawing.Size(103, 41);
            this.lollipopButton1.TabIndex = 11;
            this.lollipopButton1.Text = "VER DATOS";
            this.lollipopButton1.Click += new System.EventHandler(this.lollipopButton1_Click);
            // 
            // lollipopButtonCargar
            // 
            this.lollipopButtonCargar.BackColor = System.Drawing.Color.Transparent;
            this.lollipopButtonCargar.BGColor = "#508ef5";
            this.lollipopButtonCargar.FontColor = "#ffffff";
            this.lollipopButtonCargar.Location = new System.Drawing.Point(360, 17);
            this.lollipopButtonCargar.Name = "lollipopButtonCargar";
            this.lollipopButtonCargar.Size = new System.Drawing.Size(34, 25);
            this.lollipopButtonCargar.TabIndex = 8;
            this.lollipopButtonCargar.Text = "...";
            this.lollipopButtonCargar.Click += new System.EventHandler(this.lollipopButtonCargar_Click);
            // 
            // txt_excel
            // 
            this.txt_excel.FocusedColor = "#508ef5";
            this.txt_excel.FontColor = "#999999";
            this.txt_excel.IsEnabled = false;
            this.txt_excel.Location = new System.Drawing.Point(54, 19);
            this.txt_excel.MaxLength = 32767;
            this.txt_excel.Multiline = false;
            this.txt_excel.Name = "txt_excel";
            this.txt_excel.ReadOnly = true;
            this.txt_excel.Size = new System.Drawing.Size(300, 24);
            this.txt_excel.TabIndex = 7;
            this.txt_excel.TextAlignment = System.Windows.Forms.HorizontalAlignment.Left;
            this.txt_excel.UseSystemPasswordChar = false;
            this.txt_excel.TextChanged += new System.EventHandler(this.txt_excel_TextChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(840, 672);
            this.Controls.Add(this.cb_hojas);
            this.Controls.Add(this.lollipopButton2);
            this.Controls.Add(this.lollipopButton1);
            this.Controls.Add(this.lollipopButtonCargar);
            this.Controls.Add(this.txt_excel);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.pictureBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Cargar Calificaciones por medio de plantilla excel";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private LollipopTextBox txt_excel;
        private LollipopButton lollipopButtonCargar;
        private System.Windows.Forms.PictureBox pictureBox1;
        private LollipopButton lollipopButton1;
        private LollipopButton lollipopButton2;
        private System.Windows.Forms.ComboBox cb_hojas;
    }
}


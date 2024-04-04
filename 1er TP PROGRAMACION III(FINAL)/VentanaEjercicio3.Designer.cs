namespace tp1
{
    partial class VentanaEjercicio3
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(VentanaEjercicio3));
            this.groupboxSexo = new System.Windows.Forms.GroupBox();
            this.radioBtnMasculino = new System.Windows.Forms.RadioButton();
            this.radioBtnFemenino = new System.Windows.Forms.RadioButton();
            this.groupBoxEstadoCivil = new System.Windows.Forms.GroupBox();
            this.radioBtnSoltero = new System.Windows.Forms.RadioButton();
            this.radioBtnCasado = new System.Windows.Forms.RadioButton();
            this.clbOficio = new System.Windows.Forms.CheckedListBox();
            this.btnMostrar = new System.Windows.Forms.Button();
            this.lblResultado = new System.Windows.Forms.Label();
            this.groupboxSexo.SuspendLayout();
            this.groupBoxEstadoCivil.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupboxSexo
            // 
            this.groupboxSexo.AutoSize = true;
            this.groupboxSexo.Controls.Add(this.radioBtnMasculino);
            this.groupboxSexo.Controls.Add(this.radioBtnFemenino);
            this.groupboxSexo.Location = new System.Drawing.Point(38, 18);
            this.groupboxSexo.Name = "groupboxSexo";
            this.groupboxSexo.Size = new System.Drawing.Size(133, 86);
            this.groupboxSexo.TabIndex = 0;
            this.groupboxSexo.TabStop = false;
            this.groupboxSexo.Text = "Sexo";
            // 
            // radioBtnMasculino
            // 
            this.radioBtnMasculino.AutoSize = true;
            this.radioBtnMasculino.Cursor = System.Windows.Forms.Cursors.Hand;
            this.radioBtnMasculino.Location = new System.Drawing.Point(20, 43);
            this.radioBtnMasculino.Name = "radioBtnMasculino";
            this.radioBtnMasculino.Size = new System.Drawing.Size(73, 17);
            this.radioBtnMasculino.TabIndex = 1;
            this.radioBtnMasculino.TabStop = true;
            this.radioBtnMasculino.Text = "Masculino";
            this.radioBtnMasculino.UseVisualStyleBackColor = true;
            // 
            // radioBtnFemenino
            // 
            this.radioBtnFemenino.AutoSize = true;
            this.radioBtnFemenino.Cursor = System.Windows.Forms.Cursors.Hand;
            this.radioBtnFemenino.Location = new System.Drawing.Point(20, 20);
            this.radioBtnFemenino.Name = "radioBtnFemenino";
            this.radioBtnFemenino.Size = new System.Drawing.Size(71, 17);
            this.radioBtnFemenino.TabIndex = 0;
            this.radioBtnFemenino.Text = "Femenino";
            this.radioBtnFemenino.UseVisualStyleBackColor = true;
            // 
            // groupBoxEstadoCivil
            // 
            this.groupBoxEstadoCivil.AutoSize = true;
            this.groupBoxEstadoCivil.Controls.Add(this.radioBtnSoltero);
            this.groupBoxEstadoCivil.Controls.Add(this.radioBtnCasado);
            this.groupBoxEstadoCivil.Location = new System.Drawing.Point(225, 18);
            this.groupBoxEstadoCivil.Name = "groupBoxEstadoCivil";
            this.groupBoxEstadoCivil.Size = new System.Drawing.Size(137, 86);
            this.groupBoxEstadoCivil.TabIndex = 1;
            this.groupBoxEstadoCivil.TabStop = false;
            this.groupBoxEstadoCivil.Text = "Estado Civil";
            this.groupBoxEstadoCivil.Enter += new System.EventHandler(this.groupBoxEstadoCivil_Enter);
            // 
            // radioBtnSoltero
            // 
            this.radioBtnSoltero.AutoSize = true;
            this.radioBtnSoltero.Cursor = System.Windows.Forms.Cursors.Hand;
            this.radioBtnSoltero.Location = new System.Drawing.Point(28, 44);
            this.radioBtnSoltero.Name = "radioBtnSoltero";
            this.radioBtnSoltero.Size = new System.Drawing.Size(58, 17);
            this.radioBtnSoltero.TabIndex = 1;
            this.radioBtnSoltero.TabStop = true;
            this.radioBtnSoltero.Text = "Soltero";
            this.radioBtnSoltero.UseVisualStyleBackColor = true;
            // 
            // radioBtnCasado
            // 
            this.radioBtnCasado.AutoSize = true;
            this.radioBtnCasado.Cursor = System.Windows.Forms.Cursors.Hand;
            this.radioBtnCasado.Location = new System.Drawing.Point(28, 20);
            this.radioBtnCasado.Name = "radioBtnCasado";
            this.radioBtnCasado.Size = new System.Drawing.Size(61, 17);
            this.radioBtnCasado.TabIndex = 0;
            this.radioBtnCasado.TabStop = true;
            this.radioBtnCasado.Text = "Casado";
            this.radioBtnCasado.UseVisualStyleBackColor = true;
            // 
            // clbOficio
            // 
            this.clbOficio.CheckOnClick = true;
            this.clbOficio.FormattingEnabled = true;
            this.clbOficio.Items.AddRange(new object[] {
            "Data Entry",
            "Operador de PC",
            "Programador",
            "Reparador de PC",
            "Tester"});
            this.clbOficio.Location = new System.Drawing.Point(117, 127);
            this.clbOficio.Name = "clbOficio";
            this.clbOficio.Size = new System.Drawing.Size(154, 94);
            this.clbOficio.TabIndex = 2;
            this.clbOficio.SelectedIndexChanged += new System.EventHandler(this.clbOficio_SelectedIndexChanged);
            // 
            // btnMostrar
            // 
            this.btnMostrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnMostrar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.btnMostrar.Location = new System.Drawing.Point(97, 227);
            this.btnMostrar.Name = "btnMostrar";
            this.btnMostrar.Size = new System.Drawing.Size(197, 35);
            this.btnMostrar.TabIndex = 3;
            this.btnMostrar.Text = "Mostrar lo que se selecciono";
            this.btnMostrar.UseVisualStyleBackColor = true;
            this.btnMostrar.Click += new System.EventHandler(this.btnMostrar_Click);
            // 
            // lblResultado
            // 
            this.lblResultado.AutoSize = true;
            this.lblResultado.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblResultado.Location = new System.Drawing.Point(35, 292);
            this.lblResultado.Name = "lblResultado";
            this.lblResultado.Size = new System.Drawing.Size(0, 18);
            this.lblResultado.TabIndex = 4;
            // 
            // VentanaEjercicio3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(402, 493);
            this.Controls.Add(this.lblResultado);
            this.Controls.Add(this.btnMostrar);
            this.Controls.Add(this.clbOficio);
            this.Controls.Add(this.groupBoxEstadoCivil);
            this.Controls.Add(this.groupboxSexo);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "VentanaEjercicio3";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ejercicio 3";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.VentanaEjercicio3_FormClosed);
            this.groupboxSexo.ResumeLayout(false);
            this.groupboxSexo.PerformLayout();
            this.groupBoxEstadoCivil.ResumeLayout(false);
            this.groupBoxEstadoCivil.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupboxSexo;
        private System.Windows.Forms.RadioButton radioBtnMasculino;
        private System.Windows.Forms.RadioButton radioBtnFemenino;
        private System.Windows.Forms.GroupBox groupBoxEstadoCivil;
        private System.Windows.Forms.RadioButton radioBtnSoltero;
        private System.Windows.Forms.RadioButton radioBtnCasado;
        private System.Windows.Forms.CheckedListBox clbOficio;
        private System.Windows.Forms.Button btnMostrar;
        private System.Windows.Forms.Label lblResultado;
    }
}
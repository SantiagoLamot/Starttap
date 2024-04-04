namespace tp1
{
    partial class VentanaEjercicio2
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(VentanaEjercicio2));
            this.NOMBRE = new System.Windows.Forms.Label();
            this.APELLIDO = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.txtApellido = new System.Windows.Forms.TextBox();
            this.lBoxListado = new System.Windows.Forms.ListBox();
            this.BotBorrar = new System.Windows.Forms.Button();
            this.IngresoDatos = new System.Windows.Forms.GroupBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.IngresoDatos.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // NOMBRE
            // 
            this.NOMBRE.AutoSize = true;
            this.NOMBRE.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.NOMBRE.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.NOMBRE.ForeColor = System.Drawing.SystemColors.ControlText;
            this.NOMBRE.Location = new System.Drawing.Point(35, 96);
            this.NOMBRE.Name = "NOMBRE";
            this.NOMBRE.Size = new System.Drawing.Size(60, 13);
            this.NOMBRE.TabIndex = 0;
            this.NOMBRE.Text = "NOMBRE";
            this.NOMBRE.Click += new System.EventHandler(this.label1_Click);
            // 
            // APELLIDO
            // 
            this.APELLIDO.AutoSize = true;
            this.APELLIDO.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.APELLIDO.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.APELLIDO.ForeColor = System.Drawing.SystemColors.ControlText;
            this.APELLIDO.Location = new System.Drawing.Point(35, 140);
            this.APELLIDO.Name = "APELLIDO";
            this.APELLIDO.Size = new System.Drawing.Size(67, 13);
            this.APELLIDO.TabIndex = 1;
            this.APELLIDO.Text = "APELLIDO";
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.Window;
            this.button1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.button1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.button1.Location = new System.Drawing.Point(112, 220);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(102, 40);
            this.button1.TabIndex = 2;
            this.button1.Text = "Agregar";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(112, 93);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(170, 20);
            this.txtNombre.TabIndex = 3;
            this.txtNombre.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtNombre_KeyPress);
            // 
            // txtApellido
            // 
            this.txtApellido.Location = new System.Drawing.Point(112, 137);
            this.txtApellido.Name = "txtApellido";
            this.txtApellido.Size = new System.Drawing.Size(170, 20);
            this.txtApellido.TabIndex = 4;
            this.txtApellido.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtApellido_KeyPress);
            // 
            // lBoxListado
            // 
            this.lBoxListado.FormattingEnabled = true;
            this.lBoxListado.Location = new System.Drawing.Point(30, 22);
            this.lBoxListado.Name = "lBoxListado";
            this.lBoxListado.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple;
            this.lBoxListado.Size = new System.Drawing.Size(274, 238);
            this.lBoxListado.Sorted = true;
            this.lBoxListado.TabIndex = 5;
            this.lBoxListado.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // BotBorrar
            // 
            this.BotBorrar.BackColor = System.Drawing.SystemColors.Window;
            this.BotBorrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.BotBorrar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.BotBorrar.ForeColor = System.Drawing.SystemColors.ControlText;
            this.BotBorrar.Location = new System.Drawing.Point(119, 276);
            this.BotBorrar.Name = "BotBorrar";
            this.BotBorrar.Size = new System.Drawing.Size(102, 40);
            this.BotBorrar.TabIndex = 6;
            this.BotBorrar.Text = "Borrar";
            this.BotBorrar.UseVisualStyleBackColor = false;
            this.BotBorrar.Click += new System.EventHandler(this.BotBorrar_Click);
            // 
            // IngresoDatos
            // 
            this.IngresoDatos.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.IngresoDatos.Controls.Add(this.button1);
            this.IngresoDatos.Controls.Add(this.txtApellido);
            this.IngresoDatos.Controls.Add(this.APELLIDO);
            this.IngresoDatos.Controls.Add(this.NOMBRE);
            this.IngresoDatos.Controls.Add(this.txtNombre);
            this.IngresoDatos.ForeColor = System.Drawing.SystemColors.ControlText;
            this.IngresoDatos.Location = new System.Drawing.Point(33, 24);
            this.IngresoDatos.Name = "IngresoDatos";
            this.IngresoDatos.Size = new System.Drawing.Size(335, 331);
            this.IngresoDatos.TabIndex = 7;
            this.IngresoDatos.TabStop = false;
            this.IngresoDatos.Text = "Ingreso de Datos";
            this.IngresoDatos.Enter += new System.EventHandler(this.IngresoDatos_Enter);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.groupBox1.Controls.Add(this.lBoxListado);
            this.groupBox1.Controls.Add(this.BotBorrar);
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.groupBox1.Location = new System.Drawing.Point(401, 24);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(335, 331);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Elementos";
            // 
            // VentanaEjercicio2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(779, 400);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.IngresoDatos);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "VentanaEjercicio2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Nombre y Apellido";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.VentanaEjercicio2_FormClosed);
            this.Load += new System.EventHandler(this.VentanaEjercicio2_Load);
            this.IngresoDatos.ResumeLayout(false);
            this.IngresoDatos.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label NOMBRE;
        private System.Windows.Forms.Label APELLIDO;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtApellido;
        private System.Windows.Forms.ListBox lBoxListado;
        private System.Windows.Forms.Button BotBorrar;
        private System.Windows.Forms.GroupBox IngresoDatos;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}
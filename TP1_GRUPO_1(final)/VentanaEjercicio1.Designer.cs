namespace tp1
{
    partial class VentanaEjercicio1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(VentanaEjercicio1));
            this.txtIngreseNmb = new System.Windows.Forms.Label();
            this.Nombre = new System.Windows.Forms.TextBox();
            this.Agregar = new System.Windows.Forms.Button();
            this.ListaOrigen = new System.Windows.Forms.ListBox();
            this.ListaCopia = new System.Windows.Forms.ListBox();
            this.copia1 = new System.Windows.Forms.Button();
            this.Mover = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtIngreseNmb
            // 
            this.txtIngreseNmb.AutoSize = true;
            this.txtIngreseNmb.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtIngreseNmb.Location = new System.Drawing.Point(39, 42);
            this.txtIngreseNmb.Name = "txtIngreseNmb";
            this.txtIngreseNmb.Size = new System.Drawing.Size(128, 15);
            this.txtIngreseNmb.TabIndex = 0;
            this.txtIngreseNmb.Text = "Ingrese un nombre";
            this.txtIngreseNmb.UseMnemonic = false;
            // 
            // Nombre
            // 
            this.Nombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Nombre.ForeColor = System.Drawing.SystemColors.WindowText;
            this.Nombre.Location = new System.Drawing.Point(173, 39);
            this.Nombre.MaxLength = 30;
            this.Nombre.Name = "Nombre";
            this.Nombre.Size = new System.Drawing.Size(207, 21);
            this.Nombre.TabIndex = 1;
            this.Nombre.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.Nombre_KeyPress);
            // 
            // Agregar
            // 
            this.Agregar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Agregar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.Agregar.Location = new System.Drawing.Point(397, 37);
            this.Agregar.Name = "Agregar";
            this.Agregar.Size = new System.Drawing.Size(75, 23);
            this.Agregar.TabIndex = 2;
            this.Agregar.Text = "Agregar";
            this.Agregar.UseVisualStyleBackColor = true;
            this.Agregar.Click += new System.EventHandler(this.Agregar_Click);
            // 
            // ListaOrigen
            // 
            this.ListaOrigen.FormattingEnabled = true;
            this.ListaOrigen.Location = new System.Drawing.Point(42, 140);
            this.ListaOrigen.Name = "ListaOrigen";
            this.ListaOrigen.Size = new System.Drawing.Size(162, 238);
            this.ListaOrigen.TabIndex = 3;
            // 
            // ListaCopia
            // 
            this.ListaCopia.FormattingEnabled = true;
            this.ListaCopia.Location = new System.Drawing.Point(310, 140);
            this.ListaCopia.Name = "ListaCopia";
            this.ListaCopia.Size = new System.Drawing.Size(162, 238);
            this.ListaCopia.Sorted = true;
            this.ListaCopia.TabIndex = 4;
            this.ListaCopia.SelectedIndexChanged += new System.EventHandler(this.ListaCopia_SelectedIndexChanged);
            // 
            // copia1
            // 
            this.copia1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.copia1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.copia1.Location = new System.Drawing.Point(238, 186);
            this.copia1.Name = "copia1";
            this.copia1.Size = new System.Drawing.Size(35, 23);
            this.copia1.TabIndex = 5;
            this.copia1.Text = ">";
            this.copia1.UseVisualStyleBackColor = true;
            this.copia1.Click += new System.EventHandler(this.copia1_Click);
            // 
            // Mover
            // 
            this.Mover.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Mover.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(254)));
            this.Mover.Location = new System.Drawing.Point(238, 227);
            this.Mover.Name = "Mover";
            this.Mover.Size = new System.Drawing.Size(35, 23);
            this.Mover.TabIndex = 6;
            this.Mover.Text = ">>";
            this.Mover.UseVisualStyleBackColor = true;
            this.Mover.Click += new System.EventHandler(this.button1_Click);
            // 
            // VentanaEjercicio1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(527, 428);
            this.Controls.Add(this.Mover);
            this.Controls.Add(this.copia1);
            this.Controls.Add(this.ListaCopia);
            this.Controls.Add(this.ListaOrigen);
            this.Controls.Add(this.Agregar);
            this.Controls.Add(this.Nombre);
            this.Controls.Add(this.txtIngreseNmb);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "VentanaEjercicio1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Nombres";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.VentanaEjercicio1_FormClosed);
            this.Load += new System.EventHandler(this.VentanaEjercicio1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label txtIngreseNmb;
        private System.Windows.Forms.TextBox Nombre;
        private System.Windows.Forms.Button Agregar;
        private System.Windows.Forms.ListBox ListaOrigen;
        private System.Windows.Forms.ListBox ListaCopia;
        private System.Windows.Forms.Button copia1;
        private System.Windows.Forms.Button Mover;
    }
}
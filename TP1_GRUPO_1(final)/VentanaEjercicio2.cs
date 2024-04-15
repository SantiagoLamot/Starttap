using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace tp1
{
    public partial class VentanaEjercicio2 : Form
    {
        VentanaPrincipal ventanaPrincipal;
        public VentanaEjercicio2(VentanaPrincipal ventanaPrincipal)
        {
            InitializeComponent();
            this.ventanaPrincipal = ventanaPrincipal;
        }

        private void VentanaEjercicio2_FormClosed(object sender, FormClosedEventArgs e)
        {
            ventanaPrincipal.Show();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void VentanaEjercicio2_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();

            string nuevoNombre = $"{nombre} {apellido}".ToLower();
            foreach (var item in lBoxListado.Items)
            {
                if (item.ToString().ToLower() == nuevoNombre)
                {
                    MessageBox.Show("El nombre y apellido ya existe", "Error de validacion", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }


            if (txtNombre.Text.Trim().Length > 0 & txtApellido.Text.Trim().Length > 0)
            {
                lBoxListado.Items.Add(txtNombre.Text.Trim() + " " + txtApellido.Text.Trim());
                txtNombre.Text = "";
                txtApellido.Text = "";
            }
            else
            {
                MessageBox.Show("Debe ingresar todos los datos solicitados", "Atencion");

            }
        }

        private void BotBorrar_Click(object sender, EventArgs e)
        {
            if(lBoxListado.SelectedItem != null)
            {
                if(MessageBox.Show("¿Esta seguro que desea eliminar el elemento seleccionado?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question)==DialogResult.Yes)
                {
                    lBoxListado.Items.Remove(lBoxListado.SelectedItem);
                }
            }
            else
            {
                MessageBox.Show("Debe seleccionar un item para borrar", "Atencion", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void txtNombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!(char.IsLetter(e.KeyChar)) && (e.KeyChar != (char)Keys.Back))
            {
                e.Handled = true;
                return;
            }
        }

        private void txtApellido_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!(char.IsLetter(e.KeyChar)) && (e.KeyChar != (char)Keys.Back))
            {
                e.Handled = true;
                return;
            }
        }

        private void IngresoDatos_Enter(object sender, EventArgs e)
        {

        }
    }
}

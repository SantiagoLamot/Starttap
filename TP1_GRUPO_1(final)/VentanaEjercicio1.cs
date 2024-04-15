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
    public partial class VentanaEjercicio1 : Form
    {
        VentanaPrincipal ventanaPrincipal;
        public VentanaEjercicio1(VentanaPrincipal ventanaPricipal)
        {
            InitializeComponent();
            this.ventanaPrincipal = ventanaPricipal;
        }

        private void VentanaEjercicio1_FormClosed(object sender, FormClosedEventArgs e)
        {
            ventanaPrincipal.Show();
        }

        private void VentanaEjercicio1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (ListaOrigen.Items.Count > 0)
            {
                
                if (MessageBox.Show("¿Esta seguro que desea pasar todos los elementos?", "Confirmar Transferencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question)==DialogResult.Yes)
                {

                    foreach (string item in ListaOrigen.Items)
                    {
                        ListaCopia.Items.Add(item);
                    }

                    ListaOrigen.Items.Clear();
   
                }
            }
            else
            {
                MessageBox.Show("No hay items en la lista de origen para transferir.", "Error de Transferencia");
            }
        }

        private void Agregar_Click(object sender, EventArgs e)
        {
            string nombre1 = Nombre.Text.Trim();

            if (nombre1.Length > 0)
            {
                if (ValidarNombre(nombre1))
                {
                    MessageBox.Show("El Nombre ingresado ya existe.", "Error de Validacion");
                }
                else
                {
                    ListaOrigen.Items.Add(nombre1);
                    Nombre.Text = "";
                }
            }
            else
            {
                MessageBox.Show("Debe ingresar un nombre.", "Atencion");
            }
        }

        private void copia1_Click(object sender, EventArgs e)
        {
            string nombre = ListaOrigen.Text;

            if (ValidarNombreCopia(nombre))
            {
                MessageBox.Show("El Nombre ingresado ya existe. Ingrese otro Nombre.", "Error de Validacion");
            }
            else if (ListaOrigen.SelectedItems.Count == 1)
            {
                ListaCopia.Items.Add(ListaOrigen.SelectedItem.ToString());

            }
            else
            {
                MessageBox.Show(" Debe seleccionar un item.", "Atencion");
            }

        }

        private bool ValidarNombre(string nombre1)
        {
            foreach (string item in ListaOrigen.Items)
            {
                if (nombre1.ToLower() == item.ToLower())
                {
                    return true;
                }

            }
            foreach (string item in ListaCopia.Items)
            {
                if (nombre1.ToLower() == item.ToLower())
                {
                    return true;
                }

            }
            return false;
        }
        private bool ValidarNombreCopia(string nombre)
        {
            foreach (string item in ListaCopia.Items)
            {
                if (nombre.ToLower() == item.ToLower())
                {
                    return true;
                }

            }
            return false;
        }

        private void ListaCopia_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Nombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!(char.IsLetter(e.KeyChar)) && (e.KeyChar != (char)Keys.Back))
            {
                e.Handled = true;
                return;

            }
        }
    }
}

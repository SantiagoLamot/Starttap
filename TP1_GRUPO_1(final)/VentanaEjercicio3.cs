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
    public partial class VentanaEjercicio3 : Form
    {
        VentanaPrincipal ventanaPrincipal;
        public VentanaEjercicio3(VentanaPrincipal ventanaPrincipal)
        {
            InitializeComponent();
            this.ventanaPrincipal = ventanaPrincipal;
            radioBtnFemenino.Checked = true;
            radioBtnCasado.Checked = true;
        }

        private void VentanaEjercicio3_FormClosed(object sender, FormClosedEventArgs e)
        {
            ventanaPrincipal.Show();
        }

        private void btnMostrar_Click(object sender, EventArgs e)
        {
            String Salida;
            Salida = "Usted selecciono lo siguientes elementos: \r\n";
            Salida += "Sexo: " + (string)(radioBtnFemenino.Checked ? "Femenino" : "Masculino") + "\r\n";
            Salida += "Estado Civil: " + (string)(radioBtnCasado.Checked ? "Casado" : "Soltero") + "\r\n";
            int i = 0;
            for ( i = 0; i < clbOficio.CheckedItems.Count; i++)
            {
                if (i == 0)
                {
                    Salida += "Oficio: \r\n";
                }
                Salida += "     - " + clbOficio.CheckedItems[i] + "\r\n";
            }

            if (i == 0)
            {
                Salida += "\r\n*** No se selecciono ningun oficio ***";
            }

            lblResultado.Text = Salida;
        }

        private void clbOficio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void groupBoxEstadoCivil_Enter(object sender, EventArgs e)
        {

        }
    }
}

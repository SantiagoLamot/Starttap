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
    public partial class VentanaPrincipal : Form
    {
        public VentanaPrincipal()
        {
            InitializeComponent();
        }

        private void btnEjercicio1_Click(object sender, EventArgs e)
        {
            VentanaEjercicio1 ventEjer1 = new VentanaEjercicio1(this);
            this.Hide();
            ventEjer1.Show();
        }

        private void btnEjercicio2_Click(object sender, EventArgs e)
        {
            VentanaEjercicio2 ventEjer2 = new VentanaEjercicio2(this);
            this.Hide();
            ventEjer2.Show();
        }

        private void btnEjercicio3_Click(object sender, EventArgs e)
        {
            VentanaEjercicio3 ventEjer3 = new VentanaEjercicio3(this);
            this.Hide();
            ventEjer3.Show();
        }

        private void VentanaPrincipal_Load(object sender, EventArgs e)
        {

        }
    }
}

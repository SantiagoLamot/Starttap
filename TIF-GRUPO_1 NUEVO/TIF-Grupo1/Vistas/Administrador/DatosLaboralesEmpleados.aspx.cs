using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;


namespace Vistas.Administrador
{
    public partial class DatosLaboralesEmpleados : System.Web.UI.Page
    {
        EmpleadosNegocio negEmpleado = new EmpleadosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGridViewEmpleados();
            }

        }

        public void CargarGridViewEmpleados()
        {
            DataTable tablaEmpleados = negEmpleado.getTabla();

            gvEmpleados.DataSource = tablaEmpleados;
            gvEmpleados.DataBind();

        }

        protected void btn_CambioIdEmpleado_Click(object sender, EventArgs e)
        {
            int id = int.Parse(tb_idEmpleado.Text);
            decimal salario = decimal.Parse(tb_NuevoSalario .Text);

            int FilasAfectadas = negEmpleado.ActualizarSalario(id, salario);

            if (FilasAfectadas == 1)
            {
                lblMensaje.Text = "El salario se modifico correctamente";
            }
            else
            {
                lblMensaje.Text = "No se ha podido modificar " + FilasAfectadas;
            }
            CargarGridViewEmpleados();
        }
    }
}
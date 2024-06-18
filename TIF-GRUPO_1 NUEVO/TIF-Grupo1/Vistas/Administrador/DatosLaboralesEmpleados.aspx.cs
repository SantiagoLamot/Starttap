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

        //CARGAR TABLA CON DATOS DE EMPLEADO
        public void CargarGridViewEmpleados()
        {
            DataTable tablaEmpleados = negEmpleado.getTabla();

            gvEmpleados.DataSource = tablaEmpleados;
            gvEmpleados.DataBind();

        }

        public void LimpiarCampos()
        {
            tb_idEmpleado.Text = string.Empty;
            tb_NuevoSalario.Text = string.Empty;
            tb_IdRol.Text = string.Empty;
            tb_incremento.Text = string.Empty;
            tb_idEmpleadoEstado.Text = string.Empty;
        }

        //ACTUALIZAR SALARIO POR EMPLEADO
        protected void btn_CambioIdEmpleado_Click(object sender, EventArgs e)
        {
            int id = int.Parse(tb_idEmpleado.Text);
            decimal salario = decimal.Parse(tb_NuevoSalario .Text);

            int FilasAfectadas = negEmpleado.ActualizarSalarioPorEmpleado(id, salario);
           
            if (FilasAfectadas == 1)
            {
                lblMensaje.Text = "El salario se modifico correctamente";
                lblMensaje1.Text = string.Empty;
                lblMensaje2.Text = string.Empty;

            }
            else
            {
                lblMensaje.Text = "No se ha podido modificar ya que no existe tal ID";
                lblMensaje1.Text = string.Empty;
                lblMensaje2.Text = string.Empty;
            }
            LimpiarCampos();
            CargarGridViewEmpleados();
        }

        //INCREMENTAR SALARIO
        protected void btn_salarioEmpleados_Click(object sender, EventArgs e)
        {
            int id = int.Parse(tb_IdRol.Text);
            decimal incremento = decimal.Parse(tb_incremento.Text);

            int filasAfectadas = negEmpleado.IncrementarSalarioEmpleados(id, incremento);

            if(filasAfectadas >= 1)
            {
                lblMensaje1.Text = "Se han incrementado el sueldo a los empleados seleccionados";
                lblMensaje.Text = string.Empty;
                lblMensaje2.Text = string.Empty;
            }
            else
            {
                lblMensaje1.Text = "No se ha podido modificar ya que no existe tal ID";
                lblMensaje.Text = string.Empty;
                lblMensaje2.Text = string.Empty;
            }
            LimpiarCampos();
            CargarGridViewEmpleados();
        }

        //CAMBIAR ESTADO EMPLEADO
        protected void btnCambiarEstado_Click(object sender, EventArgs e)
        {
            int id = int.Parse(tb_idEmpleadoEstado.Text);

            int filasAfectadas = negEmpleado.CambiarEstadoEmpleado(id);

            if(filasAfectadas == 1)
            {
                lblMensaje2.Text = "Se cambio de estado correctamente";
                lblMensaje.Text = string.Empty;
                lblMensaje1.Text = string.Empty;
            }
            else
            {
                lblMensaje2.Text = "No se encontro el Id ingresado";
                lblMensaje.Text = string.Empty;
                lblMensaje1.Text = string.Empty;
            }
            LimpiarCampos();
            CargarGridViewEmpleados();
        }
    }
}
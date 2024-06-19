using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class ClientesInactivos : System.Web.UI.Page
    {
        NegocioUsuario negocioUsuario = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGridViewClientesInactivos();
            }
        }
        private void cargarGridViewClientesInactivos()
        {
            gvClientes.DataSource = negocioUsuario.cargarGridViewClientesInactivos();
            gvClientes.DataBind();
        }

        protected void gvClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eventoDarAltaCliente")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                int idCliente = int.Parse(((Label)gvClientes.Rows[fila].FindControl("l_it_IdCliente")).Text);
                if (negocioUsuario.ActivarClienteNegocio(idCliente) == 1)
                {
                    cargarGridViewClientesInactivos();
                }
            }
        }
    }
}
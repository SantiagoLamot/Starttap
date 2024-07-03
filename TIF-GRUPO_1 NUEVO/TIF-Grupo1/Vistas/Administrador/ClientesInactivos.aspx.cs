using Entidades;
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
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }

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

        protected void gvClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClientes.PageIndex = e.NewPageIndex;
            cargarGridViewClientesInactivos();
        }
    }
}
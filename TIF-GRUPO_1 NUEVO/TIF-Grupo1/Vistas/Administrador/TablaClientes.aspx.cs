using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administrador
{
    public partial class TablaClientes : System.Web.UI.Page
    {
        NegocioUsuario negocioUsuario = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGridViewClientes();
            }
        }
        private void cargarGridViewClientes()
        {
            gvClientes.DataSource = negocioUsuario.cargarGridViewClientes();
            gvClientes.DataBind();
        }

        protected void gvClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "eventoDarBajaCliente")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                int idCliente = int.Parse(((Label)gvClientes.Rows[fila].FindControl("l_it_IdCliente")).Text);
                if(negocioUsuario.DesactivarUsuarioNegocio(idCliente)==1)
                {
                    cargarGridViewClientes();
                }
            }
        }

        protected void gvClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClientes.PageIndex = e.NewPageIndex;
            cargarGridViewClientes();

        }
    }
}
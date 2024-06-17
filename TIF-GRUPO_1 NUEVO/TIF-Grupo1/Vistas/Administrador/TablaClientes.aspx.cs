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
    }
}
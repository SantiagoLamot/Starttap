using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace Vistas.Empleado
{
    public partial class CocinaVerPedidos : System.Web.UI.Page
    {
        OrdenesNegocio neg = new OrdenesNegocio();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGVOrdenes();
            }
        }

        protected void CargarGVOrdenes()
        {
            DataTable tablaOrdenes = neg.getTabla();

            gv_ListaOrdenes.DataSource = tablaOrdenes;
            gv_ListaOrdenes.DataBind();

        }


    }
}
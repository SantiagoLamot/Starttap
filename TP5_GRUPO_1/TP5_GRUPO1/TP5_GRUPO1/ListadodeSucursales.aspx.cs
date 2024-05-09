using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO1
{
    public partial class ListadodeSucursales : System.Web.UI.Page
    {
       
        ConexionBDSucursal Conexion = new ConexionBDSucursal();
        private string consultaSelect = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNoExiste.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            consultaSelect = @"SELECT Id_Sucursal as 'ID_sucursal',NombreSucursal as 'Nombre',DescripcionSucursal as 'Descripcion', DireccionSucursal as 'Direccion', DescripcionProvincia as 'Provincia' FROM Sucursal inner join Provincia on Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia";
            Conexion.ejecutarSelectGridView(consultaSelect, gvSucursales);
            limpiarTextboxes.LimpiatextBoxes(this);
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            consultaSelect = @"SELECT Id_Sucursal as 'ID_sucursal',NombreSucursal as 'Nombre',DescripcionSucursal as 'Descripcion', DireccionSucursal as 'Direccion', DescripcionProvincia as 'Provincia' FROM Sucursal inner join Provincia on Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia where Id_Sucursal = " + txtIDbuscar.Text;
            bool rowAffected = Conexion.ejecutarSelectGridView(consultaSelect, gvSucursales);
            limpiarTextboxes.LimpiatextBoxes(this);

            if (rowAffected != true)
            {
                lblNoExiste.Text = "La Sucursal ingresada no existe"; 
            }
            else
            {
                lblNoExiste.Text = "";
            }

        }
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TP5_GRUPO1
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        private ConexionBDSucursal ConexionBDSucursal = new ConexionBDSucursal();//Conexion a Base de Datos Sucursal
        private string QuerySQL;//Consulta SQL
        private int rowAffected;//Cantidad de columnas afectadas al ejecutar la consulta.

        //Conexion a base de datos creada, pasar por paramentro la consulta sql.
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
           
            string idSucursal = txtIDSucursal.Text.Trim();
            QuerySQL = "DELETE FROM Sucursal WHERE Id_Sucursal = '" + idSucursal + "'";
            rowAffected = ConexionBDSucursal.ejecutarConsulta(QuerySQL);
            if (rowAffected > 0)
            {
                lblEliminacion.ForeColor = System.Drawing.Color.LimeGreen;
                lblEliminacion.Text = "La sucursal se ha eliminado con exito";
            }
            else
            {
                lblEliminacion.ForeColor = System.Drawing.Color.IndianRed;
                lblEliminacion.Text = "El numero de sucursal es inexistente";
            }
            limpiarTextboxes.LimpiatextBoxes(this);
        }
    }
}
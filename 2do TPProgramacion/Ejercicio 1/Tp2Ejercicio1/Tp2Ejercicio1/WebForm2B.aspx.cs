using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp2Ejercicio1
{
    public partial class WebForm2B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre, apellido;
            nombre = Request["txtNombre"].ToString();
            lblNombre.Text = nombre;
            apellido = Request["txtApellido"].ToString();
            lblApellido.Text = apellido;

            String ciudad;
            ciudad = ((DropDownList)PreviousPage.FindControl("ddlCiudad")).Text;
            lblZona.Text = ciudad;

            CheckBoxList temas = ((CheckBoxList)PreviousPage.FindControl("cblTemas"));

            List<string> TemasSeleccionados = new List<string>();
            foreach (ListItem item in temas.Items)
            {
                if (item.Selected)
                {
                    TemasSeleccionados.Add(item.Text);
                }
            } 
            string Temas = string.Join("<br />", TemasSeleccionados);
            lblTemas.Text = Temas;

        }

        protected void lblNombre_Load(object sender, EventArgs e)
        {DropDownList dropDownList = (DropDownList)PreviousPage.FindControl("ddlCiudad");


        }
    }
}
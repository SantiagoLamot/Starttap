using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp2Programacion
{
    public partial class ejercicio5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {

            //string x = ddlmemoria.SelectedValue;
            //string y = ChkAccesorios.SelectedValue; 

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            decimal aux = 0;
            decimal mem = 0;

            foreach (ListItem y in ChkAccesorios.Items)
            {
                if (y.Selected)
                {

                    aux += decimal.Parse(y.Value);
                }
            }
            mem += decimal.Parse(ddlmemoria.SelectedValue);

            Total.Text = (aux + mem).ToString();

        }


        protected void btn1_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm1.aspx");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm2A.aspx");

        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm3.aspx");

        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm4.aspx");

        }
    }
}
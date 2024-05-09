using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO1
{
    public class limpiarTextboxes
    {
        public static void LimpiatextBoxes(Control control){ 
        
            foreach(Control c in control.Controls)
            {
                if(c is TextBox)
                { ((TextBox)c).Text = string.Empty; }
                else if(c.Controls.Count > 0)
                {
                    LimpiatextBoxes(c);
                }
            }
        }
    }
}
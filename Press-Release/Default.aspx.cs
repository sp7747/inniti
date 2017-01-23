using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Press_Release_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        div1.InnerHtml = outputlabel.Text;
    }
}
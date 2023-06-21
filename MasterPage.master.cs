using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        HyperLink1.Visible = (Session["emailValue"]==null)? false :true  ; /*Edit Profile */
        HyperLink2.Visible = (Session["emailValue"] == null) ? true : false; /*Login */
        HyperLink3.Visible = (Session["emailValue"] == null) ? true : false; /*Register*/
    }

}

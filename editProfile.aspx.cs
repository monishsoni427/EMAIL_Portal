using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class editProfile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Session["emailValue"].ToString();
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
        if (!IsPostBack)
        {
            string s = "select *from Register where email = '" + email + "'";
            ad = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "update Register set sname = '" + TextBox1.Text + "',uname = '" + TextBox2.Text + "',phone = '" + TextBox3.Text + "' where email = '" + TextBox4.Text + "'";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();       
        Response.Write("<script language='javascript'>window.alert('Data Update Successfully');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
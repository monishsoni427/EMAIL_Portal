using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Compose : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        cmd = new SqlCommand();


        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sTo = TextBox1.Text;
        string subject = TextBox2.Text;
        string message = TextBox3.Text;
        DateTime now = DateTime.Now; 
        string time = now.ToShortTimeString();
        string emailVal = Session["emailValue"].ToString();
        if (TextBox1.Text != "")
        {
            string q1 = "insert into Compose values('" + emailVal + "','" + sTo + "','" + time + "','" + subject + "','" +message +"')";
            cmd = new SqlCommand(q1, con);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Write("<script language='javascript'>window.alert('Successfully Send');window.location='Send.aspx';</script>");
            
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
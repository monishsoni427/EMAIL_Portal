using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    
    SqlDataAdapter ad;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
        string s = "select *from Register where email = '"+TextBox1.Text+"'";
        ad = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet(); 
        ad.Fill(ds);
        if (ds.Tables[0].Rows.Count==0)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Write("<script>alert('User not exist please Register first')</script>");
        }
        else
        {
            string email = ds.Tables[0].Rows[0][4].ToString();
            string password = ds.Tables[0].Rows[0][5].ToString();
            if ((TextBox1.Text == email) && TextBox2.Text == password)
            {

                Session["emailValue"] = TextBox1.Text;
                Response.Write("<script language='javascript'>window.alert('Successfully logged In');window.location='Compose.aspx';</script>");
            }

            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Response.Write("<script>alert('Please write Correct email and password')</script>");
            }
        }
    }


 /*   protected void Button1_Click(object sender, EventArgs e)
    {
        string username = Request.Cookies["username"].Value;
        string email = Request.Cookies["email"].Value;
        string password = Request.Cookies["password"].Value;
        if ((username == TextBox1.Text || email == TextBox1.Text) && password == TextBox2.Text)
        {
            Response.Cookies["loggedIn"].Value = "1";
            Response.Redirect("Compose.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Username and password')</script>");
        }
    }*/

}
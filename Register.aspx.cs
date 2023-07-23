using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Register: System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter ad;
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
      
        if (TextBox5.Text == TextBox6.Text)
        {
            string q = "select *from Register where email = '" + TextBox4.Text + "'";
            ad = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            ad.Fill(ds); 
            if (ds.Tables[0].Rows.Count==0)
            {
                string s = "insert into Register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>window.alert('Successfully Registered');window.location='Compose.aspx';</script>");
            }
            else
            {
               
                    
                    Response.Write("<script language='javascript'>window.alert('User already Exist Please Login');window.location='index.aspx';</script>");
                
            }   
        }
        else
        {
                
                Response.Write("<script>alert('Something went wrong please check all fields')</script>");

            
        }
    }
}

/* Response.Cookies["name"].Value = TextBox1.Text;
       Response.Cookies["username"].Value = TextBox2.Text;
       Response.Cookies["phone"].Value = TextBox3.Text;
       Response.Cookies["Email"].Value = TextBox4.Text;
       Response.Cookies["password"].Value = TextBox5.Text;
       Response.Redirect("Login.aspx");
 * */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        string strcon = WebConfigurationManager.ConnectionStrings["StudentMasterConnectionString"].ConnectionString.ToString();
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand("select * from Admin where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", sqlcon);
        cmd.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                Response.Redirect("gridview.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid credentials');</script>");
        }

        sqlcon.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forget.aspx");
    }
}
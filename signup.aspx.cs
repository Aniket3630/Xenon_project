using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class signup : System.Web.UI.Page
{
    string strcon = WebConfigurationManager.ConnectionStrings["StudentMasterConnectionString"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int RESULT = 0;
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand sqlcmd = new SqlCommand("insert into Table2 (fname,lname,email,password,security) values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')",sqlcon);
        RESULT = sqlcmd.ExecuteNonQuery();
        if (RESULT > 0)
        {
            Response.Write("registered");
        }
        else
        {
            Response.Write("error");
        }
        sqlcon.Close();
    }
}
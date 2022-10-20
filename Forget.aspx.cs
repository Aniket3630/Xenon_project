using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class Forget : System.Web.UI.Page
{
    string strcon = WebConfigurationManager.ConnectionStrings["StudentMasterConnectionString"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand("select * from Table2 where email='" + TextBox1.Text + "' and security='" + TextBox2.Text + "'", sqlcon);
        cmd.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable ds = new DataTable();
        sda.Fill(ds);
        foreach (DataRow row in ds.Rows)
        {

            Label3.Text = row["password"].ToString();
        }


        sqlcon.Close();


    }
}


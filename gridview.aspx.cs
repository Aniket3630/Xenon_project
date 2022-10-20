using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class gridview : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = WebConfigurationManager.ConnectionStrings["StudentMasterConnectionString"].ConnectionString.ToString();
        SqlConnection scon = new SqlConnection(strcon);
        scon.Open();
        SqlCommand cmd = new SqlCommand("delete from Table2 where email='" + TextBox1.Text + "'", scon);
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        scon.Close();
    }
}
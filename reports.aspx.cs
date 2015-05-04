using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class reports : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
        c1.getcommand.CommandText = "select * from casereport";
        DataTable dt = new DataTable();
        SqlDataAdapter add = new SqlDataAdapter();
        add.SelectCommand = c1.getcommand;
        add.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
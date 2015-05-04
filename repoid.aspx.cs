using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class repoid : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
        c1.getcommand.CommandText = "select max(rpt_id) from casereport";
        int a = Convert.ToInt16(c1.getcommand.ExecuteScalar());
        id.Text = Convert.ToString(a);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void id_TextChanged(object sender, EventArgs e)
    {

    }
}
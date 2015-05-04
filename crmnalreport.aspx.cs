using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class crmnalreport : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
        if(!IsPostBack )
        {

         //   c1.getcommand.CommandText = "SELECT Rpt_id FROM dbo.AgenAdmin WHERE (AgenAdmin.rpt_id = casereport.rpt_id) AND (AgenAdmin.rpt_id = criminal_reprt.rpt_id) and AgenAdmin.stat=1";
            c1.getcommand.CommandType=CommandType.StoredProcedure;
            c1.getcommand.CommandText = "ViewRep";
            SqlDataAdapter adp = new SqlDataAdapter();
            DataSet ds = new DataSet();
            adp.SelectCommand = c1.getcommand;
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    public string  Getimg(object cr_id)
    {
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "select image from criminal where cr_id=" + cr_id + "";
        string img = c1.getcommand.ExecuteScalar().ToString();
        return "~\\pics\\" + img.ToString();
    }
}
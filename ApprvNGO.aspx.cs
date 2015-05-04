using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ApprvNGO : System.Web.UI.Page
{
    SqlDataAdapter ad = new SqlDataAdapter();
    connectionclass1 c1 = new connectionclass1();
    ngoclass nc = new ngoclass();
    DataTable dt = new DataTable();
    static int ngo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();

        }
    }
    public void bind()
    {

        dt = nc.ViewNGO();
        if (dt.Rows.Count != 0)
        {
            Label1.Visible = false;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Label1.Visible = true;

        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        dt.Clear();
        dt.Columns.Clear();
        ngo = Convert.ToInt32(e.CommandArgument);
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "select * from ngo where ngo_id=" + ngo + "";
        ad.SelectCommand = c1.getcommand;
        ad.Fill(dt);
        DetailsView1.DataSource = dt;
        DetailsView1.DataBind();
        c1.getconnection.Close();
    }
    protected void rba_CheckedChanged(object sender, EventArgs e)
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "update ngo set stat=1 where ngo_id=" + ngo + "";
        c1.getcommand.ExecuteNonQuery();
        c1.getconnection.Close();
        bind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void rbrej_CheckedChanged(object sender, EventArgs e)
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "update ngo set stat=2 where ngo_id=" + ngo + "";
        c1.getcommand.ExecuteNonQuery();
        c1.getconnection.Close();
        bind();
    }
}
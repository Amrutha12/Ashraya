using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PublishCase : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    DataTable dt = new DataTable();
    SqlDataAdapter ad = new SqlDataAdapter();
    agencyreportclass ac = new agencyreportclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.getconnection.Open();
        if (!Page.IsPostBack)
        {
            Label2.Visible = false;
            c1.getcommand.CommandText = "select rpt_id from agenadmin where stat=0";
            ad.SelectCommand = c1.getcommand;
            ad.Fill(dt);
            ddlrep.DataSource = dt;
            ddlrep.DataTextField = dt.Columns[0].ToString();
            ddlrep.DataBind();
            ddlrep.Items.Insert(0, "Select");
        }
    }
    protected void ddlrep_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlrep.SelectedItem.Text != "Select")
        {
            dt.Clear();
            dt.Columns.Clear();
            dt = ac.ViewRspnsFrmNGO(Convert.ToInt32(ddlrep.SelectedItem.Text));
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
        }
    }
    protected void btnsnd_Click(object sender, EventArgs e)
    {
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "update agenadmin set stat=1 where rpt_id="+ ddlrep.SelectedItem.Text+"";
        c1.getcommand.ExecuteNonQuery();
        Label2.Visible = true;
    }
}
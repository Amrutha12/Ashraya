using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ViewRspnsFrmNGO : System.Web.UI.Page
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
            c1.getcommand.CommandText = "select rpt_id from criminal_report where m_id=" + Session["regid"] + "";
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
        c1.getcommand.CommandText = "insert into agenadmin(rpt_id,m_id,date) values (" + ddlrep.SelectedItem.Text + "," + Session["regid"] + ",'" + DateTime.Now.Date.ToShortDateString() + "')";
        c1.getcommand.ExecuteNonQuery();
        Label2.Visible = true;
    }
}
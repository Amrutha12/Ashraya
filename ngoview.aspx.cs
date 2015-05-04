using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ngoview : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    criminalreport cri = new criminalreport();
    SqlDataAdapter add = new SqlDataAdapter();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    int regid;
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
    regid=Convert.ToInt16 (Session["regid"]);
    if (!IsPostBack)
    {
        c1.getcommand.CommandText = "select rpt_id from ngo_report where ngo_id='" + regid + "' ";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt);
        rep.DataSource = dt;
        rep.DataTextField = "rpt_id";
        rep.DataBind();
        rep.Items.Insert(0, "-select report-");
        criminal.Items.Insert(0, "-select criminal-");
        c1.getcommand.CommandText = "select nickname,cr_id from criminal ";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt2);
        criminal.DataSource = dt2;
        criminal.DataTextField = "nickname";
        criminal.DataValueField = "cr_id";
        criminal.DataBind();
        criminal.Items.Insert(0, "Select");
    }

    }
    protected void rep_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rep.SelectedItem.Text != "-select report-")
        {
            String n = rep.SelectedItem.Text;
            c1.getcommand.CommandText = "select * from casereport where rpt_id=" + Convert.ToInt16(n) + "";
            add.SelectCommand = c1.getcommand;
            add.Fill(dt1);
            DetailsView1.DataSource = dt1;
            DetailsView1.DataBind();
        }
    }
    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void criminal_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (criminal.SelectedItem.Text != "Select")
        {
            String n = criminal.SelectedItem.Text;
            c1.getcommand.CommandText = "select * from criminal where nickname='" + n + "'";
            add.SelectCommand = c1.getcommand;
            add.Fill(dt3);
            DetailsView2.DataSource = dt3;
            DetailsView2.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int n = cri.Getmaxncid();
        string d = DateTime.Now.Date.ToString();
        string r = rep.SelectedItem.Text;
       c1.getcommand.CommandText="select m_id from ngo_report where rpt_id=" + Convert.ToInt16(r) + "";
       string m = c1.getcommand.ExecuteScalar().ToString();

        string c = criminal.SelectedItem.Value;
        string s = cri.addcriminalrep(Convert.ToInt16(n), Convert.ToInt16(r), Convert.ToInt16(m), regid, Convert.ToInt16(c), d);
        Response.Write(s);
    }
}
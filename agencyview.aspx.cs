using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class agencyview : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    ngoreportclass n1 = new ngoreportclass();
    statusclass s1 = new statusclass();
    SqlDataAdapter add = new SqlDataAdapter();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int regid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    regid=Convert.ToInt16 (Session["regid"]);
    if (!IsPostBack)
    {
        c1.openconnection();
        Panel1.Visible = false;
        c1.getcommand.CommandText = "select rpt_id from agency_report where m_id='"+regid +"' ";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt);
        rep.DataSource = dt;
        rep.DataTextField = "rpt_id";
        rep.DataBind();
        rep.Items.Insert(0, "-select report-");
        c1.getconnection.Close();

    }
            

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String n = rep.SelectedItem.Text;
        c1.getconnection.Open();
        c1.getcommand.CommandText = "select * from casereport where rpt_id=" + Convert.ToInt16(n) + "";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt1);
        DetailsView1.DataSource = dt1;
        DetailsView1.DataBind();
        c1.getconnection.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c1.getcommand.CommandText = "select ngo_id from ngo";
        int b = Convert.ToInt16(c1.getcommand.ExecuteScalar());
        string d = DateTime.Now.Date.ToString();
        int n = n1.Getmaxnrid();
        string id = rep.SelectedItem.Text;
        string s = n1.addngorep(Convert.ToInt16(n), Convert.ToInt16(id),regid, b , d);
        c1.getconnection.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        dt.Clear();
        dt.Columns.Clear();
        Panel1.Visible = true;
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "select ngo_id from ngo where stat=1";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = dt.Columns[0].ToString();
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select");
        c1.getconnection.Close();
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        dt.Clear();
        dt.Columns.Clear();
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "select * from ngo where ngo_id="+ DropDownList1.SelectedItem.Text+"";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt);
        DetailsView2.DataSource = dt;       
        DetailsView2.DataBind();
        c1.getconnection.Close();

        }
    protected void btnSnd_Click(object sender, EventArgs e)
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.Text;
        c1.getcommand.CommandText = "insert into ngo_report (rpt_id,m_id,ngo_id,date) values("+ rep.SelectedItem.Text+","+ regid +","+ DropDownList1.SelectedItem.Text+",'"+ DateTime.Now.Date.ToShortDateString()+"')";
         c1.getcommand.ExecuteNonQuery();
        c1.getconnection.Close();
    }
}
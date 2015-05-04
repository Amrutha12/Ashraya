using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewRepDet : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    agencyreportclass a1 = new agencyreportclass();
    static int id;
    SqlDataAdapter add = new SqlDataAdapter();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
      id = Convert.ToInt32(Request.QueryString["id"]);
      
        if(!IsPostBack)
        {
            c1.getcommand.CommandText = "select * from casereport where rpt_id='" + id + "'";
        
            add.SelectCommand = c1.getcommand;
            add.Fill(dt);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();

            ////data to drop down list.........
            agency.Items.Clear();
            c1.getcommand.CommandText = "select name,m_id from agency";
            add.SelectCommand = c1.getcommand;
            add.Fill(dt1);
            agency.DataSource = dt1;
            agency.DataTextField = "name";
            agency.DataValueField = "m_id";
            agency.DataBind();
            agency.Items.Insert(0, "-select agency-");
        }
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string n = agency.SelectedItem.Text;
        c1.getcommand.CommandText = "select * from agency where name='"+n +"'";
        add.SelectCommand = c1.getcommand;
        add.Fill(dt2);
        DetailsView2.DataSource = dt2;
        DetailsView2.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string d = DateTime.Now.Date.ToString();
        int n = a1.Getmaxarid();
        string ag = agency.SelectedItem.Value;
        string s = a1.addviewrep(Convert.ToInt16(n),id,Convert.ToInt16(ag),d);
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}
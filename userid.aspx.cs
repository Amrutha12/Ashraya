using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class userstatus : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
        if (!Page.IsPostBack)
        {
            c1.getcommand.CommandText = "select rpt_id from casereport where reg_id=" + Session["regid"] + "";
            ad.SelectCommand = c1.getcommand;
            ad.Fill(dt);
            repid.DataSource = dt;
            repid.DataTextField = dt.Columns[0].ToString();
            repid.DataBind();
            repid.Items.Insert(0, "Select");
        }
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (repid.SelectedItem.Text != "Select")
        {
            c1.getcommand.CommandText = "select stat from agenadmin where rpt_id=" + repid.SelectedItem.Text + "";
            int st = Convert.ToInt32(c1.getcommand.ExecuteScalar());
            if (st == 1)
            {
                lblmsg.Visible = false;
                dt.Clear();
                dt.Columns.Clear();
                
                c1.getcommand.CommandText = "select rpt_id,category,subject,description,crime_place,crime_date,crime_time,rpt_date,status from casereport where rpt_id=" + repid.Text + "";
                ad.SelectCommand = c1.getcommand;
                ad.Fill(dt);
                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();
                dt.Clear();
                dt.Columns.Clear();

                c1.getcommand.CommandText = "SELECT dbo.CRIMINAL.cr_id, dbo.CRIMINAL.name, dbo.CRIMINAL.sex, dbo.CRIMINAL.age, dbo.CRIMINAL.location, dbo.CRIMINAL.crimanaltype, dbo.CRIMINAL.nickname FROM  dbo.CRIMINAL_REPORT INNER JOIN dbo.CRIMINAL ON dbo.CRIMINAL_REPORT.cr_id = dbo.CRIMINAL.cr_id  where criminal_report.rpt_id=" + repid.Text + "";
                ad.SelectCommand = c1.getcommand;
                ad.Fill(dt);
                DetailsView2.DataSource = dt;
                DetailsView2.DataBind();
                c1.getcommand.CommandText = "select image from criminal where cr_id=" + dt.Rows[0].ItemArray[0].ToString() + "";
                string img = c1.getcommand.ExecuteScalar().ToString();
                Image1.ImageUrl = "~\\pics\\" + img.ToString();
            }
            else
            {
                lblmsg.Visible = true;
            }
        }
    }


    protected void repid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

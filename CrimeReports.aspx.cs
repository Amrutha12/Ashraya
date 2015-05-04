using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;
using System.Data.SqlClient;
public partial class CrimeReports : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.getconnection.Open();
        ReportDocument rptdoc = new ReportDocument();
        DataSet1 ds1 = new DataSet1();
        dt.Clear();
        dt.Columns.Clear();
        dt = GetDet();
        ds1.Tables[0].Merge(dt);
        rptdoc.Load(Server.MapPath("CrystalReport.rpt"));
        rptdoc.SetDataSource(ds1);
        CrystalReportViewer1.ReportSource = rptdoc;
    }
    public DataTable GetDet()
    {
        c1.getcommand.CommandText = "select rpt_id,rpt_date from casereport";
        ad.SelectCommand = c1.getcommand;
        ad.Fill(dt);
        return dt;
    }
}
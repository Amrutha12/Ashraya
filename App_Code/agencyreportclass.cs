using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for agencyreportclass
/// </summary>
public class agencyreportclass
{
    SqlDataAdapter ad=new SqlDataAdapter();
    DataTable dt=new DataTable();
    connectionclass1 c1 = new connectionclass1();
    public int Getmaxarid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxarid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;
    }
    public string addviewrep(int arid, int rptid, int mid,string date)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addviewrep";
            c1.getcommand.Parameters.Add(new SqlParameter("@arid", arid));
            c1.getcommand.Parameters.Add(new SqlParameter("@rptid", rptid));
            c1.getcommand.Parameters.Add(new SqlParameter("@mid", mid));
            c1.getcommand.Parameters.Add(new SqlParameter("@date",date));
            c1.getcommand.ExecuteNonQuery();
            return "success";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            c1.getconnection.Close();
        }

    }
    public DataTable ViewRspnsFrmNGO(int rptid)
    {
        try
        {
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "ViewCrimRptNGO";
            c1.getcommand.Parameters.Clear();
            c1.getcommand.Parameters.Add(new SqlParameter("@rptid", rptid));
            ad.SelectCommand = c1.getcommand;
            ad.Fill(dt);
            return dt;
        }
        finally
        {
            c1.getconnection.Close();
        }

    }
}
	
	
		
	

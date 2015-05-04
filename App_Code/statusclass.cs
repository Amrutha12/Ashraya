using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class statusclass
{
    connectionclass1 c1 = new connectionclass1();
    public int Getmaxstatusid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxstatusid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;
    }
    public string addngorep(int statusid, int rptid,string status, string date)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addstatus";
            c1.getcommand.Parameters.Add(new SqlParameter("@statusid", statusid));
            c1.getcommand.Parameters.Add(new SqlParameter("@rptid", rptid));
            c1.getcommand.Parameters.Add(new SqlParameter("@status", status));
            c1.getcommand.Parameters.Add(new SqlParameter("@date", date));
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
}
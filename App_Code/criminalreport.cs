using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class criminalreport
{
    connectionclass1 c1 = new connectionclass1();
    public int Getmaxncid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxncid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;
    }
    public string addcriminalrep(int ncid, int rptid, int mid,int ngoid,int crid, string date)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addcriminalrep";
            c1.getcommand.Parameters.Add(new SqlParameter("@ncid", ncid));
            c1.getcommand.Parameters.Add(new SqlParameter("@rptid", rptid));
            c1.getcommand.Parameters.Add(new SqlParameter("@mid", mid));
            c1.getcommand.Parameters.Add(new SqlParameter("@ngoid", ngoid));
            c1.getcommand.Parameters.Add(new SqlParameter("@cr_id", crid));
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for complaintclass
/// </summary>
public class complaintclass
{
    connectionclass1 c1 = new connectionclass1();
    public int getmaxrptid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxrptid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;
    }
    public string addcomp(int rptid, int regid, string subject, string description, string crimeplace, string crimedate, string crimetime, string rptdate, string category,string status)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addcomp";
            c1.getcommand.Parameters.Add(new SqlParameter("@rptid", rptid));
            c1.getcommand.Parameters.Add(new SqlParameter("@regid", regid));
            c1.getcommand.Parameters.Add(new SqlParameter("@subject", subject));
            c1.getcommand.Parameters.Add(new SqlParameter("@description", description));
            c1.getcommand.Parameters.Add(new SqlParameter("@crimeplace", crimeplace));
            c1.getcommand.Parameters.Add(new SqlParameter("@crimedate", crimedate));
            c1.getcommand.Parameters.Add(new SqlParameter("@crimetime", crimetime));
            c1.getcommand.Parameters.Add(new SqlParameter("@rptdate", rptdate));
            c1.getcommand.Parameters.Add(new SqlParameter("@category", category));
            c1.getcommand.Parameters.Add(new SqlParameter("@status", status));
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class ngoreportclass
{
    connectionclass1 c1 = new connectionclass1();
    public int Getmaxnrid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxnrid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;
    }
    public string addngorep(int nrid, int rptid, int mid,int ngoid, string date)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addngorep";
            c1.getcommand.Parameters.Add(new SqlParameter("@nrid", nrid));
            c1.getcommand.Parameters.Add(new SqlParameter("@rptid", rptid));
            c1.getcommand.Parameters.Add(new SqlParameter("@mid", mid));
            c1.getcommand.Parameters.Add(new SqlParameter("@ngoid", ngoid));
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
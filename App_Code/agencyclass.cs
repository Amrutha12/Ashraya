using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class agencyclass
{
    connectionclass1 c1 = new connectionclass1();
    public int Getmaxmid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxmid";
        c1.getcommand.Parameters.Clear();
        int k = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return k;
    }
    public string addagency(int mid, string name, string place, string address, string mob, string email,string uname,string pwd)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addagency";
            c1.getcommand.Parameters.Add(new SqlParameter("@mid", mid));
            c1.getcommand.Parameters.Add(new SqlParameter("@name", name));
            c1.getcommand.Parameters.Add(new SqlParameter("@place", place));
            c1.getcommand.Parameters.Add(new SqlParameter("@address", address));
            c1.getcommand.Parameters.Add(new SqlParameter("@mob", mob));
            c1.getcommand.Parameters.Add(new SqlParameter("@email", email));
            c1.getcommand.Parameters.Add(new SqlParameter("@uname", uname));
            c1.getcommand.Parameters.Add(new SqlParameter("@pwd", pwd));
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
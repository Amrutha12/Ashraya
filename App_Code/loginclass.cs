using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class loginclass
{
    connectionclass1 c1 = new connectionclass1();

   
    public string addlogin(int uid, string uname, string password, string type)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addlogin";
            c1.getcommand.Parameters.Add(new SqlParameter("@uid", uid));
            c1.getcommand.Parameters.Add(new SqlParameter("@uname", uname));
            c1.getcommand.Parameters.Add(new SqlParameter("@password", password));
            c1.getcommand.Parameters.Add(new SqlParameter("@type", type));
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

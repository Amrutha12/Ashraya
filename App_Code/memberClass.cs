using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class memberClass
{
    connectionclass1 c1 = new connectionclass1();
    public int Getmaxregid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxregid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;            
    }



    public string addmember(int regid, string uname, string name, string address, string mob, string email, string sex, int age, string idstatus)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addmember";
            c1.getcommand.Parameters.Add(new SqlParameter("@regid", regid));
            c1.getcommand.Parameters.Add(new SqlParameter("@uname", uname));
            c1.getcommand.Parameters.Add(new SqlParameter("@name", name));
            c1.getcommand.Parameters.Add(new SqlParameter("@address", address));
            c1.getcommand.Parameters.Add(new SqlParameter("@mob", mob));
            c1.getcommand.Parameters.Add(new SqlParameter("@email", email));
            c1.getcommand.Parameters.Add(new SqlParameter("@sex", sex));
            c1.getcommand.Parameters.Add(new SqlParameter("@age", age));
            c1.getcommand.Parameters.Add(new SqlParameter("@idstatus", idstatus));
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
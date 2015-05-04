using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class criminalclass
{
    connectionclass1 c1 = new connectionclass1();
    public int getmaxcrid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxcrid";
        c1.getcommand.Parameters.Clear();
        int n = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return n;
    }
    public string addcriminal(int crid, string name, string sex,int age, string location, string criminaltype,string image,string nickname)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addcriminal";
            c1.getcommand.Parameters.Add(new SqlParameter("@crid", crid));
            c1.getcommand.Parameters.Add(new SqlParameter("@name", name));
            c1.getcommand.Parameters.Add(new SqlParameter("@sex", sex));
            c1.getcommand.Parameters.Add(new SqlParameter("@age", age));
            c1.getcommand.Parameters.Add(new SqlParameter("@location",location));
            c1.getcommand.Parameters.Add(new SqlParameter("@criminaltype", criminaltype));
            c1.getcommand.Parameters.Add(new SqlParameter("@image", image));
            c1.getcommand.Parameters.Add(new SqlParameter("@nickname", nickname));
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
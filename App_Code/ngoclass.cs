using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class ngoclass
{
    connectionclass1 c1 = new connectionclass1();
    DataTable dt = new DataTable();
    SqlDataAdapter ad = new SqlDataAdapter();
    public int Getmaxngoid()
    {
        c1.getconnection.Open();
        c1.getcommand.CommandType = CommandType.StoredProcedure;
        c1.getcommand.CommandText = "getmaxngoid";
        c1.getcommand.Parameters.Clear();
        int k = Convert.ToInt32(c1.getcommand.ExecuteScalar());
        return k;
    }

    public string addngo(int ngoid,string name,string place,string police,string mob,string email,string uname,string pwd)
    {
        try
        {
            c1.getconnection.Close();
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.StoredProcedure;
            c1.getcommand.CommandText = "addngo";
            c1.getcommand.Parameters.Add(new SqlParameter("@ngoid",ngoid));
            c1.getcommand.Parameters.Add(new SqlParameter("@name", name));
            c1.getcommand.Parameters.Add(new SqlParameter("@place", place));
            c1.getcommand.Parameters.Add(new SqlParameter("@police", police));
            c1.getcommand.Parameters.Add(new SqlParameter("@mob", mob));
            c1.getcommand.Parameters.Add(new SqlParameter("@email", email));
            c1.getcommand.Parameters.Add(new SqlParameter("@uname",uname));
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
    public DataTable ViewNGO()
    {
        try
        {
            c1.getconnection.Open();
            c1.getcommand.CommandType = CommandType.Text;
            c1.getcommand.CommandText = "select * from ngo where stat=0";
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
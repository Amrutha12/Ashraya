using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



public class connectionclass1
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
	public connectionclass1()
	{
        con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\MCTAshray_cri\App_Data\data.mdf;Integrated Security=True;User Instance=True";
        cmd.Connection = con;

	}
    public void openconnection()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }
    public SqlConnection getconnection
    {
        get
        {
            return con;
        }
    }
    public SqlCommand getcommand
    {
        get
        {
            return cmd;
        }
    }
}
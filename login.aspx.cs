using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    connectionclass1 c1 = new connectionclass1();
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.openconnection();
          
    }
    protected void uname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void pwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c1.getcommand.CommandText = "select count(*) from login where uname='"+uname.Text +"' and password='"+pwd.Text +"' ";
        int a=Convert.ToInt16 (c1.getcommand.ExecuteScalar());
        if (a != 0)
        {
            c1.getcommand.CommandText = " select uid from login where uname='" + uname.Text + "' and password='" + pwd.Text + "' ";
            int regid =Convert.ToInt16(c1.getcommand.ExecuteScalar());
            Session["regid"] = regid;
            c1.getcommand.CommandText = "select type from login where uname='" + uname.Text + "' and password='" + pwd.Text + "' ";
            string type = c1.getcommand.ExecuteScalar().ToString();
            if (type == "user")
            {
                Response.Redirect("home_user.aspx");
            }
            else if(type=="ngo")
            {
                Response.Redirect("ngouser.aspx");
            }
            else if(type=="agency")
            {
           
                Response.Redirect("agencyuser.aspx");
            }
            else if (type == "admin")
            {
                Response.Redirect("admin.aspx");
            }
        }
        else
            Label5.Text = "Invalid Username or Password";


    }
}
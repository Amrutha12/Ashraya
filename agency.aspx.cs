using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class agency : System.Web.UI.Page
{
    agencyclass a1 = new agencyclass();
    loginclass l1 = new loginclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int t = a1.Getmaxmid();
        
        string s = a1.addagency(Convert.ToInt16(t), name.Text, place.Text, address.Text, mob.Text, email.Text,uname.Text,pwd.Text);
        Response.Write("s");
        string r = l1.addlogin(Convert.ToInt16(t), uname.Text, pwd.Text, "agency");
        Response.Redirect("account.aspx");
    }
}
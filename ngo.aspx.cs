using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ngo : System.Web.UI.Page
{
    ngoclass n1 = new ngoclass();
    loginclass l1 = new loginclass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int t = n1.Getmaxngoid();
        
        string s = n1.addngo(Convert.ToInt16(t),name.Text,place.Text, police.Text, mob.Text,email.Text,uname.Text,pwd.Text);
        Response.Write("s");
        string r = l1.addlogin(Convert.ToInt16(t), uname.Text, pwd.Text, "ngo");
        Response.Redirect("account.aspx");
    }
}
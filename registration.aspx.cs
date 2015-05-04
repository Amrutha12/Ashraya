using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class registration : System.Web.UI.Page
{
    
    memberClass m1 = new memberClass();
    loginclass l1 = new loginclass();

    protected void Page_Load(object sender, EventArgs e)
    {
    
        if (!IsPostBack)
        {
            int j;
            for (j = 1950; j <= 2010; j++)
            {
                year.Items.Add(j.ToString());
            }
            month.Items.Insert(0, "-select-");
            date.Items.Insert(0, "-select-");
            year.Items.Insert(0, "-select-");
           // c1.getcommand.CommandText = "select count(*)+1 from registration";
            //string id = c1.getcommand.ExecuteScalar().ToString();
            //reg_id = "ASHRAY_" + id;
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string m = month.SelectedItem.Value;
        if (m == "1" || m == "3" || m == "5" || m == "7" || m == "8" || m == "10" || m == "12")
            for (int i = 1; i <= 31; i++)
            {
                date.Items.Add(Convert.ToString(i));
            }
        else if (m == "2")
        {
            for (int i = 1; i <= 29; i++)
                date.Items.Add(Convert.ToString(i));
        }
        else
        {
            for (int i = 1; i <= 30; i++)
                date.Items.Add(Convert.ToString(i));

        } 

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        int n = m1.Getmaxregid();
        
        string gen;
         if (male.Checked == true)
            gen = "male";
        else
            gen = "female";
        string s = m1.addmember(Convert.ToInt16(n), uname.Text, name.Text, address.Text, mob.Text, email.Text, gen, Convert.ToInt16(age.Text),"0");
        Response.Write("s");
        string t = l1.addlogin(Convert.ToInt16(n), uname.Text, pwd.Text, "user");
        Response.Redirect("account.aspx");
    }
    protected void email_TextChanged(object sender, EventArgs e)
    {
        uname.Text = email.Text;
    }
    
    protected void year_SelectedIndexChanged(object sender, EventArgs e)
    {
        string b = year.SelectedItem.Value;
        string w = DateTime.Now.Year.ToString();
        int r;
        r = Convert.ToInt16(w) - Convert.ToInt16(b);
        age.Text = Convert.ToString(r);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
    protected void female_CheckedChanged(object sender, EventArgs e)
    {

    }
}
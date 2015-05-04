using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class casefile : System.Web.UI.Page
{
    complaintclass cp1 = new complaintclass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int j;
            TextBox1.Text = DateTime.Now.ToString();
            for (j = 1950; j <= 2013; j++)
            {
                year.Items.Add(j.ToString());
                
            }
            month.Items.Insert(0, "-select-");
            date.Items.Insert(0, "-select-");
            year.Items.Insert(0, "-select-");
            
        }
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
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string m = month1.SelectedItem.Value;
        //if (m == "1" || m == "3" || m == "5" || m == "7" || m == "8" || m == "10" || m == "12")
        //    for (int i = 1; i <= 31; i++)
        //    {
        //        date1.Items.Add(Convert.ToString(i));
        //    }
        //else if (m == "2")
        //{
        //    for (int i = 1; i <= 29; i++)
        //        date1.Items.Add(Convert.ToString(i));
        //}
        //else
        //{
        //    for (int i = 1; i <= 30; i++)
        //        date1.Items.Add(Convert.ToString(i));

        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = cp1.getmaxrptid();
        string cat, dob,t1;
        dob = month.SelectedItem.Value + "/" + date.SelectedItem.Text + "/" + year.SelectedItem.Text;
       // dob1 = month1.SelectedItem.Value + "/" + date1.SelectedItem.Text + "/" + year1.SelectedItem.Text;
        t1 = crtime.Text + " " + ctime.SelectedItem.Text;
        //t2 = reptime.Text + " " + rtime.SelectedItem.Text;
        if (victim.Checked == true)
            cat = "victim";
        else
            cat = "eye witness";
        string s = cp1.addcomp(Convert.ToInt16(n), Convert.ToInt16(Session["regid"]), subject.Text, description.Text, cplace.Text, dob, t1,TextBox1.Text,cat,"0");
        Response.Redirect("repoid.aspx");
    }
}
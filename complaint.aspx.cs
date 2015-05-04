using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class complaint : System.Web.UI.Page
{
    complaintclass cp1 = new complaintclass();
    int regid;
    protected void Page_Load(object sender, EventArgs e)
    {

        regid = Convert.ToInt16(Session["regid"]);
        if (!IsPostBack)
        {
            lblmsg.Visible = false;
            int j;
            for (j = 2000; j <= 2013; j++)
            {
                year.Items.Add(j.ToString());
                //year1.Items.Add(j.ToString());
                lbldt.Text = DateTime.Now.Date.ToShortDateString();
                reptime.Text = DateTime.Now.ToShortTimeString();
            month.Items.Insert(0, "-select-");
            date.Items.Insert(0, "-select-");
            year.Items.Insert(0, "-select-");
            //month1.Items.Insert(0, "-select-");
            //date1.Items.Insert(0, "-select-");
            //year1.Items.Insert(0, "-select-");
            }
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
        string cat, dob, dob1,t1;
        dob = month.SelectedItem.Value + "/" + date.SelectedItem.Text + "/" + year.SelectedItem.Text;
        dob1 = DateTime.Now.Date.ToShortDateString();
        t1 = crtime.Text + " " + ctime.SelectedItem.Text;
        //t2 = reptime.Text + " " + rtime.SelectedItem.Text;
        if (victim.Checked == true)
            cat = "victim";
        else
            cat = "eye witness";
        string s = cp1.addcomp(n, regid, subject.Text, description.Text, cplace.Text, dob, t1,dob1,cat,"0");
        lblmsg.Text = lblmsg.Text + n.ToString();
        lblmsg.Visible = true;
        
        
    }
}
    
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    criminalclass r1 = new criminalclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.PostedFile.SaveAs(Server.MapPath ("pics\\"+FileUpload1.FileName) );
        int p =r1.getmaxcrid();
        string sex;
        if (male.Checked == true)
            sex = "male";
        else
            sex = "female";
        string s = r1.addcriminal(Convert.ToInt16(p), name.Text, sex, Convert.ToInt16(age.Text), location.Text, criminaltype.Text, FileUpload1.FileName,nickname.Text);
        Response.Write("s");

    }
}
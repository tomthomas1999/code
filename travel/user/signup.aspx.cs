using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_signup : System.Web.UI.Page
{
    travel t = new travel();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        t.WriteData("insert into login values('"+TextBox1.Text+"','"+TextBox3.Text+"','user')");
        Response.Write("<script>alert('successfully done')</Script>");
        Server.Transfer("signin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("signup.aspx");
    }
}
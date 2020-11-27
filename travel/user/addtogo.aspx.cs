using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    travel p = new travel();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["place"] = TextBox1.Text;
        p.WriteData("insert into notification values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+Session["phone"].ToString()+"','"+Session["name"]+"',getdate())");
        Response.Write("<script>alert('add suceefully')</script>");
    }
}
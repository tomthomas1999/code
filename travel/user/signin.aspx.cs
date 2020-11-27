using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_signin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        travel t = new travel();
        t.ReadData("select * from login where phone='" + Txtp.Text + "' and pass='" + TextBox1.Text + "'");
      if(t.dr.Read())
      {
          Session["phone"] = Txtp.Text;
          string utype = t.dr["status"].ToString();
            if (utype == "admin")
            {
                Response.Redirect("~/admin/adminhome.aspx");
            }
            else
            {

                Response.Redirect("~/user/userhome1.aspx");
            }
      }
            else
            {
                Response.Write("<script>alert('invalid')</script>");
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("signin.aspx");
    }
}

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

        p.fillGrid("select * from notification where phone='" + Session["phone"].ToString() + "' ", GridView1);  
    }
   
   
    
    protected void LinkButton2_Command(object sender, CommandEventArgs e)
    {
        p.WriteData("delete from notification where nid='" + e.CommandArgument.ToString() + "'");
        Response.Write("<script>alert('deleted')</script>");
        Server.Transfer("notification.aspx");
    }
}
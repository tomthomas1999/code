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
        
        p.Adapter("select *,'~/user/image/'+pro.img as im from pro where phone='" + Session["phone"] + "'");
       
        if (p.dt.Rows.Count != null)
        {
            DataList1.DataSource = p.dt;
            DataList1.DataBind();
            
        }
        else
        {
            Response.Redirect("addp.aspx");
        }
        
    }


   
}
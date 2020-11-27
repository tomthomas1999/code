using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    travel obj = new travel();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.Adapter("select * from notification where place='" + TextBox1.Text + "' AND NOT  phone='" + Session["phone"] + "'");
        if (obj.dt.Rows.Count != 0)
        {
            DataList1.DataSource = obj.dt;
            DataList1.DataBind();
        }
        else
        {
            Response.Write("<script> message('no message')</script>");
        }
        
    }
   
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    
}
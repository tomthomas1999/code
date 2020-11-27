using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_userhome1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        travel p = new travel();
        p.Adapter("select *, '~/user/image/'+pro.img as im from pro");
        if (p.dt.Rows.Count != null)
        {
        
            DataList1.DataSource = p.dt;

            DataList1.DataBind();
        }
        
        
    }
}
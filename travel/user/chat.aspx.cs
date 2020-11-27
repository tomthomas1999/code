using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_chat : System.Web.UI.Page
{
    travel p = new travel();
    protected void Page_Load(object sender, EventArgs e)
    {
        string phone=Request.QueryString["phone"];

        p.Adapter("select *, '~/user/image/'+pro.img as im from pro where phone='" + phone + "'");

        if(p.dt.Rows.Count != null)
        {
            DataList1.DataSource = p.dt;
            DataList1.DataBind();
        }





            p.Adapter("select * from chat where phone='" + phone + "'");
            if (p.dt.Rows.Count == null)
            {
                Response.Redirect("chat.aspx");
            }
            else
            {
                DataList1.DataSource = p.dt;
                DataList1.DataBind();
            }

            p.Adapter("select * from chat where phone='" + TextBox2.Text + "'");
            if (p.dt.Rows.Count == null)
            {
                Response.Redirect("chat.aspx");
            }
            else
            {
                DataList1.DataSource = p.dt;
                DataList1.DataBind();
            }
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        p.WriteData("insert into chat  values('"+TextBox1.Text+"' ,'"+ TextBox2.Text+"',getdate(),'"+Session["name"]+"','"+Session["phone"]+"','sender')  ");
    }
}
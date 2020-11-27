using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addprofile : System.Web.UI.Page
{
    travel t = new travel();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("addp.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.FileName;
            string ext = System.IO.Path.GetExtension(fname);
            if (ext == ".jpg" || ext == ".JPG" || ext == ".jpeg" || ext == ".JPEG" || ext == ".gif" || ext == ".GIF")
            {
                FileUpload1.SaveAs(Server.MapPath("~/user/image/" + fname));
                t.WriteData("insert into pro values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + FileUpload1.FileName + "','" + Session["phone"].ToString() + "')");
                Response.Write("<script>alert('add successfully')</script>");
                Session["name"] = TextBox1.Text;
            }
            }
            else
            {
                Response.Write("<script>alert('invalid')</script>");
            }
        
    }
}
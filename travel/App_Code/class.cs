using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Class1
/// </summary>
public class travel
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd;
    public SqlDataReader dr;
    public SqlDataAdapter ad = new SqlDataAdapter();
    public DataTable dt = new DataTable();
    public SqlCommand cmd_sp = new SqlCommand();

    protected void Getconnection()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.ConnectionString = ConfigurationManager.AppSettings["travel"];
        con.Open();
    }
    public void ReadData(string sql)
    {
        Getconnection();
        cmd = new SqlCommand(sql, con);
        dr = cmd.ExecuteReader();
    }
    public void WriteData(string sql)
    {
        Getconnection();
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
    }
    public void Adapter(string sql)
    {
        dt.Rows.Clear();
        Getconnection();
        cmd = new SqlCommand(sql, con);
        ad.SelectCommand = cmd;
        ad.Fill(dt);
    }

    public void FillDropDownList(string text, string value, string table, string condition, DropDownList ddllst)
    {
        if (condition == "")
        {
            string sql = "select distinct " + text + "," + value + " from " + table;
            Adapter(sql);
            if (dt.Rows.Count > 0)
            {
                ddllst.DataSource = dt;
                ddllst.DataTextField = text;
                ddllst.DataValueField = value;
                ddllst.DataBind();
            }
        }
        else
        {
            string sql = "select distinct " + text + "," + value + " from " + table + " where " + condition;
            Adapter(sql);
            if (dt.Rows.Count > 0)
            {
                ddllst.DataSource = dt;
                ddllst.DataTextField = text;
                ddllst.DataValueField = value;
                ddllst.DataBind();
            }
        }
        ddllst.Items.Insert(0, "--SELECT--");
    }
    public void fillGrid(string sql, GridView grd)
    {
        Adapter(sql);
        if (dt.Rows.Count > 0)
        {
            grd.DataSource = dt;
            grd.DataBind();
        }
    }
}

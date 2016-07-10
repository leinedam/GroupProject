using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Inventory_Stock : System.Web.UI.Page 
{

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void SearchButton_Click1(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books where (title like '%"+TextBoxSearch.Text.ToString()+"%')";
        SqlDataSource1.SelectCommand = str;
    }
    protected void SearchButton_Click2(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books where (isbn like '%" + TextBoxSearch.Text.ToString() + "%')";
        SqlDataSource1.SelectCommand = str;
    }
    protected void SearchButton_Click3(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books where (author like '%" + TextBoxSearch.Text.ToString() + "%')";
        SqlDataSource1.SelectCommand = str;
    }

    protected void reset_button(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books";
        SqlDataSource1.SelectCommand = str;
    }
}
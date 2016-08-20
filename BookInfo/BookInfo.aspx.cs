using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Text;

public partial class Inventory_Stock : System.Web.UI.Page
{

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // fill the table contents
        string isbn = Request.QueryString["ISBN"];
        Debug.WriteLine("ISBN:" + isbn);
        String str1 = "SELECT [CoverImage] FROM [books] WHERE (isbn like '%" + isbn + "%')";

        SqlDataSource1.SelectCommand = str1;

        String str2 = "SELECT [Title], [ISBN], [Author], [Publisher], [Price] , [retail], [category] , [quantity]  FROM [books] WHERE (isbn like '%" + isbn + "%')";
        SqlDataSource2.SelectCommand = str2;

        String str3 = "SELECT [Description] FROM [books] WHERE (isbn like '%" + isbn + "%')";
        SqlDataSource3.SelectCommand = str3;



    }
}

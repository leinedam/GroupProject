using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

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


    //import buttom


    protected void btnExportToCSV_Click(object sender, EventArgs e)
    {
        List<book> emList = new List<book>();
        using (DatabaseEntities dc = new DatabaseEntities())
        {
            emList = dc.books.ToList();
        }

        if (emList.Count > 0)
        {
            string header = @"""Title"",""ISBN"",""Author"",""Publisher"",""Category"",""Quantity"",""Price"",""Retail""";
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(header);

            foreach (var i in emList)
            {
                sb.AppendLine(string.Join(",",
                    string.Format(@"""{0}""", i.Title),
                    string.Format(@"""{0}""", i.ISBN),
                    string.Format(@"""{0}""", i.Author),
                    string.Format(@"""{0}""", i.Publisher),
                    string.Format(@"""{0}""", i.Category),
                    string.Format(@"""{0}""", i.Quantity),
                    string.Format(@"""{0}""", i.Price),
                    string.Format(@"""{0}""", i.Retail)
                    ));
            }

            // Download Here

            HttpContext context = HttpContext.Current;
            context.Response.Write(sb.ToString());
            context.Response.ContentType = "text/csv";
            context.Response.AddHeader("Content-Disposition", "attachment; filename=BooksData.csv");
            context.Response.End();
        }
        else
        {
            lblMessage.Text = "Data not Found!";
        }
    }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books where (author like '%" + TextBoxSearch.Text.ToString() + "%')";
        SqlDataSource1.SelectCommand = str;
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books where (isbn like '%" + TextBoxSearch.Text.ToString() + "%')";
        SqlDataSource1.SelectCommand = str;
    }
    protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        String str = "SELECT * FROM books where (author like '%" + TextBoxSearch.Text.ToString() + "%')";
        SqlDataSource1.SelectCommand = str;
    }


 


}

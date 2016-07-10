using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for BooksDLL
/// </summary>
public class BooksDLL
{

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;


    public BooksDLL()
    {

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    }


    public DataSet Select_Book()
    {

        da = new SqlDataAdapter("Select * from books", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    public void Insert_Book(BooksBLL eob)
    {

        cmd = new SqlCommand("Insert into Books VALUES (@title,@isbn,@author,@publisher,@category,@quantity,@price,@retail)", cn);
        cmd.Parameters.AddWithValue("@title", eob.BooksTitle);
        cmd.Parameters.AddWithValue("@isbn", eob.BooksIsbn);
        cmd.Parameters.AddWithValue("@author", eob.BooksAuthor);

        cmd.Parameters.AddWithValue("@publisher", eob.BooksPublisher);
        cmd.Parameters.AddWithValue("@category", eob.BooksCategory);
        cmd.Parameters.AddWithValue("@quantity", eob.BooksQuantity);
        cmd.Parameters.AddWithValue("@price", eob.BooksPrice);
        cmd.Parameters.AddWithValue("@retail", eob.BooksRetail);

        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }


    public void Update_Book(BooksBLL eob)
    {

        cmd = new SqlCommand("Update Books Set book_title=@title, book_isbn=@isbn,book_author=@author, book_publisher=@publisher,book_category=@category,book_quantity=@quantity,book_price=@price,book_retail=@retail WHERE book_isbn=@isbn", cn);

        cmd.Parameters.AddWithValue("@title", eob.BooksTitle);
        cmd.Parameters.AddWithValue("@isbn", eob.BooksIsbn);
        cmd.Parameters.AddWithValue("@author", eob.BooksAuthor);

        cmd.Parameters.AddWithValue("@publisher", eob.BooksPublisher);
        cmd.Parameters.AddWithValue("@category", eob.BooksCategory);
        cmd.Parameters.AddWithValue("@quantity", eob.BooksQuantity);
        cmd.Parameters.AddWithValue("@price", eob.BooksPrice);
        cmd.Parameters.AddWithValue("@retail", eob.BooksRetail);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }


    public void Delete_Book(int eid)
    {

        cmd = new SqlCommand("Delete from books WHERE ISBN=@isbn", cn);
        cmd.Parameters.AddWithValue("@isbn", eid);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}





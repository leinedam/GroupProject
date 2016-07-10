using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BooksBLL
/// </summary>
public class BooksBLL
{
    public string BooksTitle { get; set; }
    public string BooksIsbn { get; set; }
    public string BooksAuthor { get; set; }
    public string BooksPublisher { get; set; }
    public string BooksCategory { get; set; }
    public int BooksQuantity { get; set; }
    public double BooksPrice { get; set; }
    public double BooksRetail { get; set; }


    public DataSet Select_Book()
    {
        BooksDLL edll = new BooksDLL();
        return edll.Select_Book();
    }

    public void Insert_Book(BooksBLL ebll)
    {
        BooksDLL edll = new BooksDLL();
        ebll.Insert_Book(ebll);
    }

    public void Update_Book(BooksBLL ebll)
    {
        BooksDLL edll = new BooksDLL();
        ebll.Update_Book(ebll);
    }

    public void Delete_Book(int isbn)
    {
        BooksDLL edll = new BooksDLL();
        edll.Delete_Book(isbn);

    }


}
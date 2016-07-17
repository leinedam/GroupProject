using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImpExp_ImpExp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        if (!IsPostBack)
        {
            populateDatabaseData();
            lblMessage.Text = "";
        }

    }

    private void populateDatabaseData()
    {
        using (DatabaseEntities dc = new DatabaseEntities())
        {
            // gvData.DataSource = dc.books.ToList();
            //  gvData.DataBind();
             dc.books.ToList();
            DataBind();
        }
    }

   

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


    protected void btnImportFromCVS_Click(object sender, EventArgs e)
    {
          string message = " Are you sure do you want to Continue?";
          System.Text.StringBuilder sb = new System.Text.StringBuilder();
          sb.Append("return confirm('");
          sb.Append(message);
          sb.Append("');");
          ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert", sb.ToString());

        

        if (FileUpload1.PostedFile.ContentType == "text/csv" || FileUpload1.PostedFile.ContentType == "application/vnd.ms-excel")
        {




            string fileName = Path.Combine(Server.MapPath("~/UploadDocuments"), Guid.NewGuid().ToString() + ".csv");
            try
            {
                FileUpload1.PostedFile.SaveAs(fileName);

                string[] Lines = File.ReadAllLines(fileName);
                string[] Fields;

                //Remove Header line
                Lines = Lines.Skip(1).ToArray();
                List<book> emList = new List<book>();
                foreach (var line in Lines)
                {
                    Fields = line.Split(new char[] { ',' });

                    emList.Add(
                        new book
                        {
                            Title = Fields[0].Replace("\"", ""), // removed "" 
                            ISBN = Fields[1].Replace("\"", ""),
                            Author = Fields[2].Replace("\"", ""),
                            Publisher = Fields[3].Replace("\"", ""),
                            Category = Fields[4].Replace("\"", ""),
                            //  Quantity = Fields[5].Replace(ToInt32("\"", "")),

                            Quantity = Convert.ToInt32(Fields[5].Replace("\"", "")),
                            Price = Convert.ToDecimal(Fields[6].Replace("\"", "")),
                            Retail = Convert.ToDecimal(Fields[7].Replace("\"", "")),
                        });
                }

                // Update database data
                using (DatabaseEntities dc = new DatabaseEntities())
                {
                    foreach (var i in emList)
                    {
                        var v = dc.books.Where(a => a.ISBN.Equals(i.ISBN)).FirstOrDefault();
                        if (v != null)
                        {

                            v.Title = i.Title;
                            v.ISBN = i.ISBN;
                            v.Author = i.Author;
                            v.Publisher = i.Publisher;
                            v.Category = i.Category;
                            v.Quantity = i.Quantity;
                            v.Price = i.Price;
                            v.Retail = i.Retail;
                        }
                        else
                        {
                            dc.books.Add(i);
                        }
                    }

                    dc.SaveChanges();

                    // populate updated data 
                    populateDatabaseData();
                    lblMessage.Text = "Successfully Done, now database is being uploaded....";
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

    }



}
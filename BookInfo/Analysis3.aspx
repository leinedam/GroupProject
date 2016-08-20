<%@ Page Title="Reports"  EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Analysis3.aspx.cs" Inherits="Inventory_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
      
        <%: Title %>.</h2>
 <hr>
   
     <div class="row"> 
              
          <div id="carousel-example-generic" class="carousel slide">

             
    <div style="text-align:right; margin-bottom:20px; ">
     
       <a class="btn btn-primary" href="#carousel-example-generic"   data-slide-to="2" >Yearly</a>
       <a class="btn btn-primary" href="#carousel-example-generic"   data-slide-to="0" >Categories</a>
       <a class="btn btn-primary" href="#carousel-example-generic"   data-slide-to="1">Books</a>
       
   </div>


  <!-- Wrapper for slides -->
  <div class="carousel-inner">
       <!-- item for slides -->
    <div class="item">
         <div class="col-md-12" style="text-align:center;">
              
               <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Height="460px" Width="900px" Palette="BrightPastel">
                   <Series>
                       <asp:Series Name="booksInStock" XValueMember="Category" YValueMembers="Expr1" YValuesPerPoint="6" Legend="Legend1" ChartType="Bar">
                       </asp:Series>
                       <asp:Series Name="OrdersNumber" XValueMember="Category" YValueMembers="Expr2" YValuesPerPoint="6" Legend="Legend1" ChartType="Bar">
                       </asp:Series>
                       <asp:Series Name="Revenue" XValueMember="Category" YValueMembers="Expr3" YValuesPerPoint="6" Legend="Legend1" ChartType="Bar">
                       </asp:Series>

                   </Series>
                   <ChartAreas>
                       <asp:ChartArea Name="ChartArea1">
                       </asp:ChartArea>
                   </ChartAreas>
                   <Legends>
                       <asp:Legend Name="Legend1">
                       </asp:Legend>
                   </Legends>
                   <Titles>
                       <asp:Title Name="Title1" Text="Stock, sales and revenue by category / 2016" Font="Microsoft Sans Serif, 12pt" ForeColor="DimGray">
                       </asp:Title>
                   </Titles>
               </asp:Chart>
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT DISTINCT books.Category, SUM(books.Quantity) AS Expr1, SUM(s.orders) AS Expr2, SUM(books.retail-books.price) AS Expr3 FROM books INNER JOIN SALES AS s ON books.ISBN = s.ISBN GROUP BY books.Category ORDER BY Expr1, Expr2, Expr3"></asp:SqlDataSource>
                   </div>
      </div>

     <!-- Item for slides -->
    <div class="item">
    
       <div class="row">
         <div class="col-md-12" style="text-align:center;">

             <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSourceBooks" height="650px" Palette="BrightPastel"  Width="950px" >
                 <Series>
                     <asp:Series ChartType="Bar" Name="NumberOfOrders" XValueMember="Title" YValueMembers="Expr1" Legend="Legend1">
                     </asp:Series>
                     <asp:Series ChartType="Bar" Name="Revenue" XValueMember="Title" YValueMembers="Expr2" Legend="Legend1">
                     </asp:Series>
                     <asp:Series ChartType="Bar" Name="InStock" XValueMember="Title" YValueMembers="Expr3" Legend="Legend1">
                     </asp:Series>
                 </Series>
                 <ChartAreas>
                     <asp:ChartArea Name="ChartArea2">
                     </asp:ChartArea>
                 </ChartAreas>
                 <Legends>
                     <asp:Legend Name="Legend1">
                     </asp:Legend>
                 </Legends>
                 <Titles>
                       <asp:Title Name="Title1" Text="Orders, Sales and quantity of Books / 2016" Font="Microsoft Sans Serif, 12pt" ForeColor="DimGray">
                       </asp:Title>
                   </Titles>
             </asp:Chart>
             <asp:SqlDataSource ID="SqlDataSourceBooks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT boo.Title, SUM(sal.orders) AS Expr1, SUM(boo.retail - boo.price) AS Expr2, SUM(boo.Quantity) AS Expr3 FROM SALES AS sal INNER JOIN books AS boo ON sal.ISBN = boo.ISBN GROUP BY boo.Title ORDER BY Expr1,Expr2,Expr3"></asp:SqlDataSource>
            </div>
            </div>
      </div>

     

       <!-- Item for slides -->
    <div class="item active">

          <div class="col-md-12" style="text-align:center; margin-left:4%;">
            

             <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourcequantityandorder" Height="400px" Palette="BrightPastel" OnLoad="Chart1_Load" Width="950px" >
                 <Series>
                     <asp:Series ChartType="SplineRange" Name="Orders" XValueMember="Date" YValueMembers="ord" Legend="Legend1" YValuesPerPoint="2">
                     </asp:Series>
                      <asp:Series ChartType="SplineRange" Name="Revenue" XValueMember="Date" YValueMembers="revenue" Legend="Legend1" YValuesPerPoint="2">
                     </asp:Series>
                    
                 </Series>
                 <ChartAreas>
                     <asp:ChartArea Name="ChartArea1" BorderColor="DimGray">
                     </asp:ChartArea>
                 </ChartAreas>
                 <Legends>
                     <asp:Legend Name="Legend1" ForeColor="DimGray">
                     </asp:Legend>
                 </Legends>
                  <Titles>
                       <asp:Title Name="Title1" Text="2016" Font="Microsoft Sans Serif, 12pt" ForeColor="DimGray">
                       </asp:Title>
                   </Titles>
             </asp:Chart>
             <asp:SqlDataSource ID="SqlDataSourcequantityandorder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"  SelectCommand="SELECT DISTINCT s.date AS Date, SUM(s.orders) AS ord, SUM(b.Retail - b.Price) AS revenue FROM SALES AS s INNER JOIN books AS b ON s.ISBN = b.ISBN WHERE (s.date &gt;= '2016-01-01') AND (s.date &lt;= '2016-12-31') GROUP BY s.date, s.orders ORDER BY Date" ></asp:SqlDataSource>


             </div>

     
      </div>


       
  </div> 

 
       
     </div>
</div>

</asp:Content>


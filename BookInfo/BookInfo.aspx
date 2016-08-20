<%@ Page Title="Book Info"  EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="BookInfo.aspx.cs" Inherits="Inventory_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %></h2>
 <hr>

         <div class="row">
               
              <div class="col-md-12" style="text-align:right">
                  <a class="btn btn-info" href="../Inventory/Stock.aspx">Return &raquo;</a>
             </div>
         </div>

        <div class="row"  >   
   
                 
            <div class="col-md-3">  
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Title], [ISBN], [Author], [Publisher], [Category], [Quantity], [Price], [Retail],  FROM [books]"></asp:SqlDataSource>
                <asp:GridView ID="BookInfo" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BorderStyle="None" Height="250px" HorizontalAlign="Center" CellPadding="1" CellSpacing="1"> 
                    <Columns>
                        <asp:ImageField DataImageUrlField="CoverImage" ControlStyle-Height="350px" ></asp:ImageField>
                    </Columns>    
                </asp:GridView>
  
                 </div>

            <div class="col-md-9" >
            <div style="width:650px">
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Title], [ISBN], [Author], [Price], [Publisher] FROM [books]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Title], [ISBN], [Author], [Publisher], [Category], [Quantity], [Price], [Retail],  FROM [books]"></asp:SqlDataSource>
           
                 <asp:GridView ID="GridView4" runat="server" DataSourceID="SqlDataSource2" BorderStyle="None" AutoGenerateColumns="False" DataKeyNames="ISBN" Height="35px" HorizontalAlign="Left" >

                <Columns>       
                <asp:TemplateField SortExpression="Title">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                         </ItemTemplate>
                         <HeaderStyle VerticalAlign="Top" />
                         <ItemStyle Font-Size="XX-Large" />
                     </asp:TemplateField>
                 </Columns>
                 
            </asp:GridView>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" BorderStyle="None" AutoGenerateColumns="False" DataKeyNames="ISBN" HorizontalAlign="Left" >
                  <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                      <asp:BoundField DataField="retail" HeaderText="retail" SortExpression="retail" />
                      <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                      <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                </Columns>
            </asp:GridView>
                 </div> 
                 <div style="width:100%">
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3" BorderStyle="None" GridLines="Vertical" Width="100%">
                
            </asp:GridView>

                    </div> 
            
              </div >      
        </div>
  
</asp:Content>
	
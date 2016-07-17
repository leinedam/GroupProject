﻿<%@ Page Title="Stock"  EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Inventory_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %>.</h2>
 <hr>
     <div class="row"> 
              <div class="col-md-8">  
                    <form class="form-search">
                        <asp:TextBox ID="TextBoxSearch" runat="server" OnTextChanged="TextBoxSearch_TextChanged" Width="280px" Height="27px"></asp:TextBox>
                      &nbsp;<div class="btn-group">
                      <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" id="nod">
                        Search <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu">   
                        <li><asp:Button ID="Button1" runat="server" OnClick="SearchButton_Click1" Text="Titles" CssClass="btn-link" /></li>
                        <li class="divider"></li>
                        <li><asp:Button ID="Button2" runat="server" OnClick="SearchButton_Click2" Text="ISBN" CssClass="btn-link" /></li>
                            <li class="divider"></li>
                        <li><asp:Button ID="Button3" runat="server" OnClick="SearchButton_Click3" Text="Author" CssClass="btn-link" /></li>
                      </ul>
                    </div>
                    </form>
                       <asp:Button ID="select1" runat="server" OnClick="reset_button" Text="Reset" CssClass="btn btn-default" />
                    </div>
               <div class="col-md-4" style="text-align:right">  

                    <a class="btn btn-warning" href="Item.aspx">Add Item &raquo;</a>

                    <asp:Button ID="btnExportToCSV" runat="server" Text="Export" OnClick="btnExportToCSV_Click" CssClass="btn btn-info" /> 
                    
              </div>
 </div> 
    <div class="row">
     <div class="col-md-12">        
                    <div style="text-align:right">
                          <br />
                          <asp:Label ID="lblMessage" runat="server"  Font-Bold="true"></asp:Label>
                     </div> 
    </div>
    
     
   <div class="row">
       <div "style="overflow-x:auto;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" CaptionAlign="Left">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxBookName" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                       <!-- validation -->          
                       <asp:RequiredFieldValidator id="RequiredFieldValidatortitle" runat="server"  ControlToValidate="TextBoxBookName"  ErrorMessage="Book title is required!" ForeColor="white" />          
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" SortExpression="Author">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                <!-- validation -->          
                               <asp:RequiredFieldValidator id="RequiredFieldValidatorauthor" runat="server"  ControlToValidate="TextBoxAuthor"  ErrorMessage="Author required!" ForeColor="white" /> 
                     </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" Visible="False" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:CommandField ShowEditButton="True" ButtonType="Button" ShowDeleteButton="True" />
            <asp:BoundField DataField="Retail" HeaderText="Retail" SortExpression="Retail" Visible="False" />
            <asp:HyperLinkField NavigateUrl="~/BookInfo/BookInfo.aspx" SortExpression="ISBN" Text="View Details" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
         No record found
        </EmptyDataTemplate>
        <FooterStyle BackColor="#405E88" Font-Bold="True" ForeColor="White" BorderStyle="None" Height="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2"  />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]" DeleteCommand="DELETE FROM [books] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [books] ([Title], [ISBN], [Author], [Publisher], [Category], [Quantity], [Price], [Retail]) VALUES (@Title, @ISBN, @Author, @Publisher, @Category, @Quantity, @Price, @Retail)" UpdateCommand="UPDATE [books] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [Quantity] = @Quantity, [Price] = @Price, [Retail] = @Retail WHERE [ISBN] = @ISBN">
               <DeleteParameters>
                   <asp:Parameter Name="ISBN" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="Title" Type="String" />
                   <asp:Parameter Name="ISBN" Type="String" />
                   <asp:Parameter Name="Author" Type="String" />
                   <asp:Parameter Name="Publisher" Type="String" />
                   <asp:Parameter Name="Category" Type="String" />
                   <asp:Parameter Name="Quantity" Type="Int32" />
                   <asp:Parameter Name="Price" Type="Decimal" />
                   <asp:Parameter Name="Retail" Type="Decimal" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="Title" Type="String" />
                 
                   <asp:Parameter Name="Author" Type="String" />
                   <asp:Parameter Name="Publisher" Type="String" />
                   <asp:Parameter Name="Category" Type="String" />
                   <asp:Parameter Name="Quantity" Type="Int32" />
                   <asp:Parameter Name="Price" Type="Decimal" />
                   <asp:Parameter Name="Retail" Type="Decimal" />
                   <asp:Parameter Name="ISBN" Type="String" />
               </UpdateParameters>
           </asp:SqlDataSource>
    </div>
    
</div>


    </div>
</asp:Content>


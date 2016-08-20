<%--<%@ Page Title="Title" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Inventory_Stock" %>
<%@ Reference Page="~/Inventory/Stock.aspx" %>--%>

<%--   The goal for this page is to be able to update the quantity of any book found in the stock page of our application  --%>

<%--
     Below is a EditTemplate of the stock page where the user can edit information on the books currently with our database 
    
     The goal here is to make a script that will connect to the stock page and change the quantity of the book 
    
     Then an message can pop up saying book ordered
    
     and display the book and the order date

    --%>

<%-- 
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
            <asp:TemplateField HeaderText="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                <!-- validation -->          
                               <asp:RequiredFieldValidator id="RequiredFieldValidatorauthor" runat="server"  ControlToValidate="TextBoxAuthor"  ErrorMessage="Author required!" ForeColor="white" /> 
                     </EditItemTemplate>
    
    --%>

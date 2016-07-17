<%@ Page Title="Analysis"  EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="Inventory_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %>.</h2>
 <hr>
     <div>

         <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load">
             <Series>
                 <asp:Series ChartType="Pie" Name="Series1" XValueMember="Category" YValueMembers="Quantity" YValuesPerPoint="2">
                 </asp:Series>
             </Series>
             <ChartAreas>
                 <asp:ChartArea Name="ChartArea1">
                 </asp:ChartArea>
             </ChartAreas>
         </asp:Chart>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Quantity], [Category] FROM [books]"></asp:SqlDataSource>

     </div>

</asp:Content>


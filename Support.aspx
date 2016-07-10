<%@ Page Title="Support" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h2><%: Title %>.</h2>

    <hr>
     <div class="row">
  
           
   
        <div class="col-md-5">  
           
        

          <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
         
               <p>Please Fill the Following to Send Mail.</p>
        

     <div class="form-group">
        Your name:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
            ControlToValidate="YourName" ValidationGroup="save" />
        <asp:TextBox ID="YourName" runat="server" Width="400px" CssClass="form-control"/>
      </div>

       <div class="form-group">
        Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" />
        <asp:TextBox ID="YourEmail" runat="server" Width="400px" CssClass="form-control" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" />
        </div>


        <div class="form-group">
        Subject:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            ControlToValidate="YourSubject" ValidationGroup="save" />
        <asp:TextBox ID="YourSubject" runat="server" Width="400px" CssClass="form-control"/>
        </div>


         <div class="form-group">
        Your Question:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" />
        <asp:TextBox ID="Comments" runat="server" 
                TextMode="MultiLine" Rows="5" Width="400px" CssClass="form-control" />
         </div>
             
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="Button1_Click" ValidationGroup="save" CssClass="btn btn-default" />
    </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
</p>
         </div>

         <div class="col-md-4">  
      
    <address>
        <strong>support:</strong>   <a href="mailto:Support@example.com">leinedam@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
 <address>
        <h4> Toronto, Canada.</h4>
        <br />

    </address>


   </div>  

    </div>


</asp:Content>




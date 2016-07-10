<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GroupProject.Contact" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <h2><%: Title %>.</h2>
 <div class="row">
  
           <div class="col-md-4">  
       <address>
         Toronto, Canada.
        <br />

    </address>

    <address>
        <strong>support:</strong>   <a href="mailto:Support@example.com">leinedam@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>


   </div>  
   
        <div class="col-md-5">  
           
          <h3>  Contact Form</h3>

            <form role="form">

     <div class="form-group">
    <label for="Inputname">Name</label>
    <input type="name" class="form-control" id="Inputname" placeholder="Enter your name">
  </div>

  <div class="form-group">
      <label for="message">Message</label>
<textarea class="form-control" rows="4"  placeholder="Enter a message"></textarea>
 </div>


  <button type="submit" class="btn btn-default">Submit</button>
</form>
         </div>





       




    </div>


</asp:Content>

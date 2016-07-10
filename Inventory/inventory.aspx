<%@ Page Title="inventory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="GroupProject.Inventory.Stock" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>


 <hr>
 <div class="row"> 

              <div class="col-md-8">  

                    <form class="form-search">
                      <input type="text" class="input-medium search-query">
                       <div class="btn-group">
                      <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                        Search <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                      </ul>
                    </div>
                    </form>

              </div>

               <div class="col-md-4">  
                    <ul class="nav nav-pills nav-justified">
                      <li class="active"><a href="#">Stock</a></li>
                      <li><a href="Item.aspx">Add Item</a></li>
                    </ul>
              </div>
     <br>
         
 </div>

    <br>

 <div class="row">
         <div class="col-md-12">    
             
               
         </div>

     
     <p style="text-align:right; margin-top:15px; margin-right:25px;">
         <a class="btn btn-default" runat="server" href="Item.aspx">Done</a>                          
     </p>
  </div>


</asp:Content>

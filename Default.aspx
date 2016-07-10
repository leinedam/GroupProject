<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GroupProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron">
        <img src="images/logo-white.png" style="width:200px; margin-top:-15px; margin-left:-5px;" />
        <p class="bannertext">The main objective for our inventory management system, is to allow Indigo to keep track of their sales and inventory status in real time.  
            </br> 
            <a  href="About.aspx" class="btnbanner">Read more &raquo;</a>
        </p>
        
    </div>
    </br>
    <div class="row">
        <div class="col-md-12">
            <h1 style="text-align:center; color:#751515; font-weight:bold;">Save time, Save Money, Relax</h1>
           
             <hr>
            <p style="text-align:center; line-height:30px;">
                Providing people with reasonable book price and emerging Indigo bookstore trends is
                important. Since this web application will feature real­time tracking of shipments, orders,  
                shipment processing, product returns, and buyer credit, customers will be able to perform a more 
                efficient time management and therefore increase their productivity.  
            </p>
            </br>     
            <p style="text-align:center;">
                <a class="btn btn-primary btn-lg" href="Account/Login.aspx">START &raquo;</a>

            </p>
        </div>
        

    </div>

</asp:Content>

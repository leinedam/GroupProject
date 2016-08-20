﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GroupProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2><%: Title %>.</h2>

<div class="row">
        <div class="col-md-12">
           <hr>
            <h3 style="line-height:30px; color:#751515;">
              Our application consists of an inventory management system for Indigo's store that will help staff considerably. Management can enter and delete new items or categories and make specific searches.​ 
            </h3>
        </div>
</div>
<div class="row">
       <div class="col-md-5">
          <p>
                 <ul style="line-height:35px;">
             
                    <h3> Main Features:  </h3>
                 
                      <li> Simple - search for products easily. </li>
                      <li>Mobile friendly</li>
                      <li> Analyze Sales trends</li>
                      <li> Import and export unlimited data using CSV files</li>
                      <li>Create and track book lists by isbn, author or title</li>
                 </ul>
             </p>
           </div>
         <div class="col-md-7">
           <p>

               <img src="images/bookstoreabout.jpg" style="width:85%;  margin-left:45px; margin-top:25px;" />
           </p>
        </div>
 </div>

    <div class="row">
 

        <h2>Objectives</h2>
        <hr>
        <div class="col-md-6">
         
            <p>
                 1. The main objective for our inventory management system, is to 
                allow Indigo to keep track  of their sales and inventory 
                status in real time.   
            </p>
            <p>
                2. Provide basic inventory functions such as 
                tracking the quantity of books on  hand and providing accurate
                and relevant book information including book descriptions, 
                author,  title etc,. 
            </p>
            <p>
                3. Allow the ​Buyer​ to track the value, or 
                wholesale costs vs retail costs of  books within the store 
                on­hand inventory.
            </p>
        </div>
         <div class="col-md-6">

            <p>
                4. Track the performance on book sales, 
                to provide accurate information  for sales potential estimates.
            </p>
            <p>
                5. Provide analysis information on the amount of 
                books the store should  order  to meet projected sale 
                forecasts, from which our system has calculated.  
            </p>
            <p>
                6. Provide average sale  projections, sale forecasts,  based on 
                 highest selling books  with the store, during seasonal, or sale trends, which 
                allows the  store to have the right amount of inventory at 
                the right time. 
            </p>
        </div>
  </div>
        

</asp:Content>

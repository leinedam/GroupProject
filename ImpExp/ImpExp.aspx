<%@ Page Title="Import/Export Data" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ImpExp.aspx.cs" Inherits="ImpExp_ImpExp" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %>.</h2>

 <hr>
 <div class="row"> 

   <div class="col-md-12"> 
                  


              <div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
         Books data
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">

        <div style="color:#9f9f9f;"> 
        <span class="glyphicon glyphicon-warning-sign"></span> Select files from Excel sheets in the following order "Title","ISBN","Author","Publisher",""Category","Quantity","Price","Retail".
        Changes will not be reversible.
       </div>
                      <table style="width:100%; border-color:#ffffff; margin-top:60px; text-align:center">
                          <tr>                       
                              <td style="text-align:right">
                                  <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#808080" BackColor="#e1e1e1" Width="300px"  />
                              </td>
                              <td style="text-align:right">
                                  <asp:Button ID="btnImportFromCVS" runat="server" Text="Import data To Books" OnClick="btnImportFromCVS_Click" CssClass="btn btn-danger" />
                             </td> 
                              <td>
                                  <asp:Button ID="btnExportToCSV" runat="server" Text="Export Data to Sheet" OnClick="btnExportToCSV_Click" CssClass="btn btn-primary" />
                              </td>
                          </tr>
                                 
                               <tr>
                               <td>
                                   <asp:Label ID="lblMessage" runat="server"  Font-Bold="true"></asp:Label>
                              </td>
                              <td>
                                 </td>
                                    <td>
                                 </td>
                          </tr>
                      </table>
                    
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
          Orders Data
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
          Customers Data
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse">
      <div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
</div>
                  
            
       
              
                 
       </div>
 </div>
</asp:Content>


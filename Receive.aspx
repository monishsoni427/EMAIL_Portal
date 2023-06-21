<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Receive.aspx.cs" Inherits="Receive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  Compose Text starts -->
    <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Receive Emails</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
     <!--  Compose Text Ends -->

          <!--  Compose Text Ends -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                  <nav class="navigation navbar navbar-expand-md navbar-dark ">

              <div class="collapse navbar-collapse" id="navbarsExample04"> 
             <ul class="navbar-nav mr-auto">

                 <li class="nav-item ">
                       <asp:HyperLink class="nav-link" NavigateUrl="~/Compose.aspx" ID="HyperLink1" runat="server">Compose</asp:HyperLink>
                   
                </li>
                <li class="nav-item ">

                    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Send.aspx" class="nav-link" runat="server">Sent</asp:HyperLink>
                  
                </li>
              
                <li class="nav-item">
                     <asp:Button ID="Button2" class="nav-link btn btn-danger" onClick="Button2_Click" runat="server" Text="Logout" />
                    
                   
                </li>
             </ul>   
                  </div>
    </nav>
            </div>


         <!--  Compose Text Ends -->




     <div class="card">
            <div class="card-body">

<div class="container  border border-warning">
<div class="wraper bootstrap snippets bootdeys bootdey">
   
      
    <div class="row">
      
        
        <!-- Left Sidebar -->
        <div class="col-md-12">
           
            
            <div class="panel panel-default m-t-20">
                <div class="panel-body">
                    <asp:Repeater ID="r1" runat="server">
            <ItemTemplate>
                    <table class="table table-hover mails">
                        <tbody>
                           
                            <tr>
                                <td class="mail-select">
                                    <label class="cr-styled">
                                        <asp:CheckBox ID="CheckBox1" class="fa" runat="server" />  
                                    </label>
                                </td>
                                <td class="mail-rateing">
                                    <i class="fa fa-star"></i>
                                </td>
                                <td>
                                  <asp:Label ID="Label1" runat="server"  Text='<%#Eval("sfrom") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("message") %>'></asp:Label>
                                </td>
                                <td class="text-right">
                                   <asp:Label ID="Label4" runat="server" Text='<%#Eval("time") %>'></asp:Label>
                                </td>
                                <td>
                                 <asp:LinkButton ID="LinkButton1" Text="Delete" runat="server" OnCommand="DeleleMail_Btn" CommandName='<%# Eval("id") %>'>
                            
                                      </asp:LinkButton>
                                  
                                </td>
                            </tr>

                          
                        </tbody>
                    </table>
                    </ItemTemplate>
                                </asp:Repeater>
                    <hr/>
                    
                    <div class="row ">
                        <div class="col-xs-7">
                            Showing 1 - 20 of 289
                        </div>
                        <div class="col-xs-6">
                            <div class="btn-group pull-right">
                              <button type="button" class="btn btn-default"><i class="fa fa-chevron-left"></i></button>
                              <button type="button" class="btn btn-default"><i class="fa fa-chevron-right"></i></button>
                            </div>
                        </div>
                    </div>
                </div> <!-- panel body -->
            </div> <!-- panel -->
        </div> <!-- end Col-9 -->
    
    </div><!-- End row -->
    </div>
    </div>

</div>
</div>


</asp:Content>


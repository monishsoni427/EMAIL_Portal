<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editProfile.aspx.cs" Inherits="editProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  Register Text starts -->
    <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Edit Profile</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
     <!--  Register Text Ends -->
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

                    <asp:HyperLink class="nav-link" NavigateUrl="~/Receive.aspx" ID="HyperLink3" runat="server">Receive</asp:HyperLink>
                   
                </li>
                 <li class="nav-item">
                     <asp:Button ID="Button2" class="nav-link btn btn-danger" onClick="Button2_Click" runat="server" Text="Logout" />
                    
                   
                </li>
             </ul>   
                  </div>
    </nav>
            </div>


         <!--  Compose Text Ends -->
          

      <!--  Register FOrm -->
    <div class="card">
            <div class="card-body">
      <div class="contact">
         <div class="container  w-50">
            <div class="row">
               <div class="col-md-12 padding_right0">
                  <div id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12">

                            <asp:TextBox class="contactus border border-warning"  style="color:black"  placeholder="Name" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12 ">
                          <asp:TextBox class="contactus border border-warning" style="color:black"   placeholder="Usename" ID="TextBox2" runat="server"></asp:TextBox>                          
                        </div>
                        <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning" style="color:black"  placeholder="Phone" ID="TextBox3" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning"   style="color:black"   placeholder="Email" ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                          
                        <div class="col-md-12">

                            <asp:Button ID="Button1" class="send_btn" style="margin-left:auto;margin-right:auto"  runat="server" Text="Update" OnClick="Button1_Click" />

                           
                        </div>
                     </div>
                  </div>
               </div>
                 </div>
         </div>
      </div>
                </div>
        </div>
      <!-- end Register Form -->     
        
        
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--  LOGIN Text start -->
     <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Login</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
    <!--  LOGIN Text End here -->
      <!--  LOGIN Form starts -->
   <div class="card ">
     <div class="card-body">
      <div class="contact">
         <div class="container w-50">
            <div class="row">
               <div class="col-md-12 padding_right0">
                  <div id="request" class="main_form">
                     <div class="row">
                        
                        <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning" style="color:black"   placeholder="Email" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                       
                          <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning" style="color:black"  TextMode="Password" placeholder="Password" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">

                            <asp:Button ID="Button1" class="send_btn" style="margin-left:auto;margin-right:auto"  runat="server" Text="Login" OnClick="Button1_Click" />

                           
                        </div>
                     </div>
                  </div>
               </div>
                 </div>
         </div>
      </div>
         </div>
       </div>
         <!--  LOGIN Form ends -->
</asp:Content>


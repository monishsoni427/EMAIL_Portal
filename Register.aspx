<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  Register Text starts -->
    <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Register</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
     <!--  Register Text Ends -->


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
                           <asp:TextBox class="contactus border border-warning"   style="color:black"   placeholder="Email" ID="TextBox4" runat="server"></asp:TextBox>
                        </div>
                          <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning" style="color:black" TextMode="Password"   placeholder="Password" ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                          <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning" style="color:black" TextMode="Password"  placeholder="Confirm Password" ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">

                            <asp:Button ID="Button1" class="send_btn" style="margin-left:auto;margin-right:auto"  runat="server" Text="Register" OnClick="Button1_Click" />

                           
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


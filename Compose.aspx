<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="compose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
      <!-- site metas -->
      <title>EMAILO</title>
      <meta name="keywords" content=""/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css"/>
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css"/>
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css"/>
      <!-- fevicon -->
      <link rel="icon" href="images/email.png" type="image/x-icon" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css"/>
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen"/>  
</head>
<body>
    <form id="form1" runat="server">

    <div>
           <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header class="full_bg">
         <!-- header inner -->
         <div class="header">
            <div class="header_top">
               <div class="container">
                  <div class="row">
                     <div class="col-md-3">
                        <ul class="contat_infoma">
                           <li><i class="fa fa-phone" aria-hidden="true"></i> Call : +01 12345678909</li>
                        </ul>
                     </div>
                     <div class="col-md-6">
                        <ul class="social_icon_top text_align_center  ">
                           <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                           <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                           <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                           <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                     </div>
                     <div class="col-md-3">
                        <ul class="contat_infoma text_align_right">
                           <li><a href="Javascript:void(0)"> <i class="fa fa-phone" aria-hidden="true"></i> demo@gmail.com</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="header_bottom">
                        <div class="row">
                           <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                              <div class="full">
                                 <div class="center-desk">
                                    <div class="logo">
                                       <a ">EMAILO</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                              <nav class="navigation navbar navbar-expand-md navbar-dark ">
                                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                                 <span class="navbar-toggler-icon"></span>
                                 </button>
                                 <div class="collapse navbar-collapse" id="navbarsExample04">
                                    <ul class="navbar-nav mr-auto">
                                       
                                        <li class="nav-item">
                                            <asp:HyperLink ID="HyperLink1" class="nav-link" Text="Edit Profile" NavigateUrl="editProfile.aspx" runat="server"></asp:HyperLink>
                                       </li>
                                    </ul>
                                 </div>
                                 
                              </nav>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
          </header>     
        <!-- end header inner -->
         <!-- end header -->
       
        <!--  Compose Text starts -->
    <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>New Message (Compose)</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
     <!--  Compose Text Ends -->
           
         <!--  Compose Text Ends -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                  <nav class="navigation navbar navbar-expand-md navbar-dark ">

              <div class="collapse navbar-collapse" id="Div1"> 
             <ul class="navbar-nav mr-auto">

               
                <li class="nav-item ">

                    <asp:HyperLink ID="HyperLink4" NavigateUrl="Send.aspx" class="nav-link" runat="server">Sent</asp:HyperLink>
                  
                </li>
                <li class="nav-item">

                    <asp:HyperLink class="nav-link" NavigateUrl="Receive.aspx" ID="HyperLink5" runat="server">Receive</asp:HyperLink>
                   
                </li>
                <li class="nav-item">
                     <asp:Button ID="Button2" class="nav-link btn btn-danger" onClick="Button2_Click" runat="server" Text="Logout" />
                    
                   
                </li>
             </ul>   
                  </div>
    </nav>
            </div>


         <!--  Compose Text Ends -->
          

      <!--  COmpose FOrm -->
        <div class="card">
            <div class="card-body">
      <div class="contact">
         <div class="container  w-50">
            <div class="row">
               <div class="col-md-12 padding_right0">
                  <div id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12 ">
                            <h2>TO</h2>
                      <asp:TextBox class="contactus border border-warning" style="color:black"  ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                             <h2>Subject</h2>
                          <asp:TextBox class="contactus border border-warning" style="color:black"  ID="TextBox2" runat="server"></asp:TextBox>                          
                        </div>
                        <div class="col-md-12">
                           <asp:TextBox class="contactus border border-warning" style="color:black"  TextMode="MultiLine" Height="150"  placeholder="Message" ID="TextBox3" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">

                            <asp:Button ID="Button1" class="send_btn" style="margin-left:auto;margin-right:auto"  runat="server" Text="Send" OnClick="Button1_Click" />

                           
                        </div>
                     </div>
                  </div>
               </div>
                 </div>
         </div>
      </div>
                </div>
</div>
      <!-- end Compose Form -->   



          <!--  footer -->
        
      <footer>
         <div class="footer">
            <div class="container">
                </div>
             </div>
          </footer>
         <!--  footer  end -->

         
    </div>

    </form>
     <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
</body>
</html>

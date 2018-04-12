<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ArailProjectControlApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>LOGIN</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/style.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default navbar-fixed-top" style="height:90px;background-color:#F0F0F0;border-color:#808080">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://arail-sa.com/" target="_blank"><img src="assets/images/logo.png" height="70"/></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="font-size:20px;margin-top:20px;color:white;"><a href="javascript:void(0)" data-toggle="modal" data-target="#login-signup-modal">LOGIN</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div style="height:800px; width:100%;background:url(assets/images/8.jpg) no-repeat ; background-size: cover;"">

    </div>
    <!-- Bootstrap Modal -->
		
		
		<!--Login, Signup, Forgot Password Modal -->
		<div id="login-signup-modal" class="modal fade" tabindex="-1" role="dialog">
  		<div class="modal-dialog" role="document">
    
    	<!-- login modal content -->
        <div class="modal-content" id="login-modal-content">
        
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Login Now!</h4>
      </div>
        
        <div class="modal-body">
          
          
            <div class="form-group">
                <div class="input-group">
                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                <asp:TextBox runat="server" name="emailid" id="emailid" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email" />
                </div>                      
            </div>
            
            
            <div class="form-group">
                <div class="input-group">
                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                <asp:TextBox runat="server" name="loginpassword" id="loginpassword" type="password" class="form-control input-lg" placeholder="Enter Password" required data-parsley-length="[6, 10]" data-parsley-trigger="keyup"/>
                </div>                      
            </div>
           
              <button type="submit" class="btn btn-success btn-block btn-lg" runat="server" onserverclick="LoginForm">LOGIN</button>
         
        </div>
        
        <div class="modal-footer">
          <p>
          <a id="FPModal" href="javascript:void(0)">Forgot Password?</a> 
          
          </p>
        </div>
        
       </div>
        <!-- login modal content -->
        
        
        <!-- forgot password content -->
         <div class="modal-content" id="forgot-password-modal-content">
        
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Recover Password!</h4>
      </div>
        
        <div class="modal-body">
          
          
            <div class="form-group">
                <div class="input-group">
                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                <asp:TextBox runat="server" name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email"/>
                </div>                     
            </div>
                        
            <button type="submit" class="btn btn-success btn-block btn-lg" runat="server" onserverclick="ForgotForm">
              <span class="glyphicon glyphicon-send"></span> SUBMIT
            </button>
         
        </div>
        
        <div class="modal-footer">
          <p>Remember Password ? <a id="loginModal1" href="javascript:void(0)">Login Here!</a></p>
        </div>
        
      </div>        
        <!-- forgot password content -->

		
    
    	<!-- /.modal-content -->
  		</div><!-- /.modal-dialog -->
		</div>
    <script src="assets/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script> 
    <script src="assets/parsley.min.js"></script>
    <script src="assets/modal.js"></script> 
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminAddProject.aspx.cs" Inherits="ArailProjectControlApplication.AdminAddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    
      <section class="content" style="margin-left:20px;margin-right:20px;">
      <div class="bg_img"></div>
<div class="form_wrapper">
  <div class="form_container">
    <div class="title_container">
      <h2>ADD NEW PROJECT</h2>
      
    </div>
  
      <div class="row clearfix">
        <div class="col_half">
          <label>Project Name</label>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-laptop"></i></span>
            <asp:TextBox runat="server" type="text" id="ProjectName" name="ProjectName" placeholder="Project Name" />
          </div>
        </div>
        <div class="col_half">
          <label>Client</label>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-briefcase"></i></span>
            <asp:TextBox runat="server" type="text" id="Client" name="Client" placeholder="Client" />
          </div>
        </div>
      </div>
      <div class="row clearfix">
        <div class="col_half">
          <label>Consultant</label>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
           <asp:TextBox runat="server" type="text" id="consultant" name="Consultant" placeholder="Consultant" />
          </div>
        </div>
        <div class="col_half">
          <label>Project Start Date</label>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-calendar"></i></span>
           <asp:TextBox runat="server" type="date" name="startdate" placeholder="Project Start Date" id="startdate" />
          </div>
        </div>
      </div>
      <div class="row clearfix">
        <div class="col_half">
          <label>Project End Date</label>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-calendar"></i></span>
            <asp:TextBox runat="server" type="date" name="enddate" id="enddate" placeholder="Consultant"  />
          </div>
        </div>
        <div class="col_half">
          <label>Owner</label>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-calendar"></i></span>
            <asp:TextBox runat="server" type="text" name="enddate" id="owner" placeholder="Owner Name"  />
          </div>
        </div>
      </div>
    
      <button runat="server" onserverclick="addproject" class="button" >SUBMIT</button>
  
  </div>
</div>
          <style>
              .form_wrapper {
	background:#fff;
	width:500px;
	max-width:100%;
	box-sizing:border-box;
	
	margin:10% auto 0;
	position:relative;
	z-index:1;

}
.form_container {
	padding:15px;
	border:1px dashed #ccc;
}
.form_wrapper h2 {
	font-size:1.5em;
	line-height:1.5em;
	margin:0;
}
.form_wrapper .title_container {
	text-align:center;
	margin:-15px -15px 15px;
	
	
}
.form_wrapper h3 {
	font-size:1.1em;
	font-weight:normal;
	line-height:1.5em;
	margin:0;
}
.form_wrapper .row {
	margin:10px -15px;
}
.form_wrapper .row > div {
	padding:0 15px;
	box-sizing:border-box;
}
.form_wrapper .col_half {
	width:50%;
	float:left;
}
.form_wrapper label {
	display:block;
	margin:0 0 5px;
}
.form_wrapper .input_field, .form_wrapper .textarea_field {
	position:relative;
}
.form_wrapper .input_field > span, .form_wrapper .textarea_field > span {
	position:absolute;
	left:0;
	top:0;
	color:#333;
	height:100%;
	border-right:1px solid #ccc;
	text-align:center;
	width:30px;
}
.form_wrapper .textarea_field > span {
	border-bottom:1px solid #ccc;
	max-height:35px;
}
.form_wrapper .input_field > span > i, .form_wrapper .textarea_field > span > i {
	padding-top:12px;
}
.form_wrapper input[type="text"], .form_wrapper input[type="date"], .form_wrapper input[type="tel"], textarea {
	width:100%;
	padding:10px 10px 10px 35px;
	border:1px solid #ccc;
	box-sizing:border-box;
	outline:none;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	transition: all 0.30s ease-in-out;
}
.form_wrapper textarea {
	height:8em;
}
.form_wrapper input[type="text"]:focus, .form_wrapper input[type="email"]:focus, .form_wrapper input[type="tel"]:focus, textarea:focus {
	-webkit-box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	-moz-box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	border:1px solid #f5ba1a;
}
.button {
	background:	#FF8C00;
	height:50px;
	line-height:50px;
	width:100%;
	border:none;
	outline:none;
	cursor:pointer;
	color:#fff;
	font-size:1.2em;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	transition: all 0.30s ease-in-out;
}
.button:hover, .button:focus {
	background:#daa106;
}
          </style>
    </section>
  
  </div>
</asp:Content>

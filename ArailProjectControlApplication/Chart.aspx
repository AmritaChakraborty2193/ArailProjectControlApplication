<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="ArailProjectControlApplication.Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content" style="margin-left:20px;margin-right:20px;">
      <div style="width:800px;">

      <div class="row" style="background-color:white;margin-left:20px;margin-right:20px;">
        <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-aqua" style="height:100px;margin-left:20px;margin-top:100px;">
            <div class="inner">
                <center><h4>216</h4>

              <p>CIVIL ARC. WORKS</p></center>
            </div>
            
          </div>
        </div>
        <div class="col-lg-4 col-xs-4" >
            <img src="assets/images/chart1.png" height="300" width="500"/>
        </div >
        <div class="col-lg-5 col-xs-5" style="float:right;margin-right:-350px;">
            <div style="height:100px;width:50%;background-color:darkseagreen;">
                <br />
                <center>
                    <h4 style="color:white;">311</h4>
                    <p style="color:white;"> Overall Progress</p>
                </center>
            </div>
            <br />
            <div style="height:100px;width:50%;background-color:darkseagreen;">
                
                
                    <img src="assets/images/graph.png" height="100" width="150" />
               
            </div>
              
        </div >
         
       </div>

      </div>
   
         
    </section>
      <section class="content" style="margin-left:20px;margin-right:20px;">
      <div style="width:800px;">

      <div class="row" style="background-color:white;margin-left:20px;margin-right:20px;">
        <div class="col-lg-3 col-xs-6">
          <div style="height:100px;margin-left:20px;margin-top:100px;background-color:red;">
            <div class="inner" style="background-color:red;color:white;">
                <br />
                <center><h4>115</h4>

              <p>MEP WORKS</p></center>
            </div>
            
          </div>
        </div>
        <div class="col-lg-4 col-xs-4">
            <img src="assets/images/chart1.png" height="300" width="500"/>
        </div >
         
       </div>
        
      </div>
          <div style="float:right;margin-top:-250px;">
               <a data-target="#myModal" data-toggle="modal"><img src="assets/images/add.png" height="70" width="70" style="margin-top:160px;"/></a>
              <div tabindex="-1" class="modal fade" id="myModal" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
  <div class="modal-dialog" >
    <div class="modal-content" style="height:910px;">
      <div class="modal-header">
        <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
        <h4 class="modal-title" id="myModalLabel" style="text-align:center;font-size:20px;font-weight:bold;   padding-bottom: .5em;">Materials Form</h4>
      </div>
       
      <div class="modal-body">
          <div class="bg_img"></div>
<div class="form_wrapper">
  <div class="form_container">
 
      <div class="row clearfix">
        <div class="col_half">
          <label>Project Name</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" id="Project" name="Project" placeholder="Project Name"></asp:TextBox>
              <asp:RequiredFieldValidator ID="prj" runat="server" controltovalidate="Project" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator> </div>
        </div>
        <div class="col_half">
          <label>Items</label>
          <div class="input_field"> 
            <asp:TextBox runat="server" type="text" id="Items" name="Items" placeholder="Items" />
              <asp:RequiredFieldValidator ID="itms" runat="server" controltovalidate="Items" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
      </div>
      <div class="row clearfix">
        <div class="col_half">
          <label>Supplier Name</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" id="Supplier" name="Supplier" placeholder="Supplier"  />
              <asp:RequiredFieldValidator ID="supname" runat="server" controltovalidate="Supplier" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
        <div class="col_half">
          <label>Country of Origin</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" name="Country" id="Country" placeholder="Country" />
              <asp:RequiredFieldValidator ID="cntryorg" runat="server"  controltovalidate="Country" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator> </div>
        </div>
      </div>
        <div class="row clearfix">
        <div class="col_half">
          <label>Contact Person Name</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" id="Contact" name="Contact" placeholder="Contact"  />
              <asp:RequiredFieldValidator ID="personname" runat="server" controltovalidate="Contact" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
        <div class="col_half">
          <label>Contact Person Number</label>
          <div class="input_field">
            <asp:TextBox runat="server" id="Number" type="text" name="Number" placeholder="Phone no"  />
              <asp:RequiredFieldValidator ID="personno" runat="server"  controltovalidate="Number" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
      </div><div class="row clearfix">
        <div class="col_half">
          <label>BOQ</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" id="BOQ" name="BOQ" placeholder="BOQ"  />
              <asp:RequiredFieldValidator ID="boqnow" runat="server" controltovalidate="BOQ" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator> </div>
        </div>
        <div class="col_half">
          <label>Drawing Attachments</label>
          <div class="input_field">
          <asp:TextBox runat="server" type="text" id="Drawing" name="Drawing" placeholder="Drawing Attachments"  />
              <asp:RequiredFieldValidator ID="draw" runat="server" controltovalidate="Drawing" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
      </div><div class="row clearfix">
        <div class="col_half">
          <label>Supplier Request Status</label>
          <div class="input_field">
           <asp:TextBox runat="server" type="text" name="Status" id="SupplierRequestStatus" placeholder="Supplier Request Status"/>
              <asp:RequiredFieldValidator ID="supreqstat" runat="server" controltovalidate="SupplierRequestStatus" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
        <div class="col_half">
          <label>Client Request Status</label>
          <div class="input_field">
           <asp:TextBox runat="server" type="text" name="reqstatus" id="ClientRequestStatus" placeholder="Client Request Status" />
              <asp:RequiredFieldValidator ID="clientreqstat" runat="server" controltovalidate="ClientRequestStatus" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
      </div><div class="row clearfix">
        <div class="col_half">
          <label>Document Attachment</label>
          <div class="input_field">
           <asp:TextBox runat="server" type="text" name="Document Attachment" id="DocumentAttachment" placeholder="Document Attachment"  />
              <asp:RequiredFieldValidator ID="docatt" runat="server" controltovalidate="DocumentAttachment" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
        <div class="col_half">
          <label>Submittal Attachments</label>
          <div class="input_field">
           <asp:TextBox runat="server" type="text" name="Submittal Attachments" placeholder="Submittal Attachments" id="SubmittalAttachments" />
              <asp:RequiredFieldValidator ID="subatt" runat="server" controltovalidate="SubmittalAttachments" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
      </div><div class="row clearfix">
        <div class="col_half">
          <label>RMTC Ref</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" name="RMTC Ref" id="RMTCRef" placeholder="RMTC Ref"  />
              <asp:RequiredFieldValidator ID="rmtc" runat="server" controltovalidate="RMTCRef" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator> </div>
        </div>
        <div class="col_half">
          <label>CRS Received</label>
          <div class="input_field">
            <asp:TextBox runat="server" type="text" id="CRSReceived" name="CRS Received" placeholder="CRS Received " />
              <asp:RequiredFieldValidator ID="crcrec" runat="server" controltovalidate="CRSReceived" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
      </div><div class="row clearfix">
        <div class="col_half">
          <label>2nd Submittal</label>
          <div class="input_field">
          <asp:TextBox runat="server" type="text" id="Submittal" name="Submittal" placeholder="Submittal"  />
              <asp:RequiredFieldValidator ID="subtwo" runat="server" controltovalidate="Submittal" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator></div>
        </div>
        <div class="col_half">
          <label>Remarks</label>
          <div class="input_field">
           <asp:TextBox runat="server" type="text" name="Remarks" placeholder="Remarks" id="Remarks"  />
              <asp:RequiredFieldValidator ID="rem" runat="server" controltovalidate="Remarks" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator> </div>
        </div>
      </div>
      <div class="row clearfix">
        <div class="col_half">
          <label>Consultant</label>
          <div class="input_field">
           <asp:TextBox runat="server" type="text" id="Consultant" name="Consultant" placeholder="Consultant"  />
              <asp:RequiredFieldValidator ID="const" runat="server" controltovalidate="Consultant" ErrorMessage="Please Enter Details"></asp:RequiredFieldValidator> </div>
        </div>
      </div>
  </div>
</div>
          <style>
              .form_wrapper {
	background:#fff;
	width:600px;
	max-width:100%;
	box-sizing:border-box;
	padding:1px;
	align-content:center;
	position:relative;
    margin-top:0px;
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
	padding:15px 0;
	
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
	
	max-height:35px;
}
.form_wrapper .input_field > span > i, .form_wrapper .textarea_field > span > i {
	padding-top:12px;
}
.form_wrapper input[type="text"],.form_wrapper input[type="number"], textarea {
	width:100%;
	padding:10px 10px 10px 35px;
	
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
.form_wrapper input[type="text"]:focus, .form_wrapper input[type="number"]:focus,  textarea:focus {
	-webkit-box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	-moz-box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	border:1px solid #f5ba1a;
}

          </style>
      </div>
      <div class="modal-footer" style="margin-top:0px;">
        <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
        <button class="btn btn-primary" type="button">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

          </div>
         
    </section>
  
  </div>
</asp:Content>

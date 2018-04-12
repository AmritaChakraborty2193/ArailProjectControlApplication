<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddSupplier.aspx.cs" Inherits="ArailProjectControlApplication.AddSupplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
.clearfix:after {
  content: "";
  display: block;
  clear: both;
  visibility: hidden;
  height: 0;
}

.form_wrapper {
  background: #fff;
  width: 400px;
  max-width: 100%;
  box-sizing: border-box;
  padding: 25px;
  margin: 1% auto 0;
  position: relative;
  z-index: 1;
  border-top: 5px solid #FF8C00;
  -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
  -webkit-transform-origin: 50% 0;
  -ms-transform-origin: scale3d(1, 1, 1);
  transform-origin: 50% 0;
  -webkit-transform: scale3d(1, 1, 1);
  transform: scale3d(1, 1, 1);
  -webkit-transition: none;
  transition: none;
  -webkit-animation: expand 0.8s 0.6s ease-out forwards;
  animation: expand 0.8s 0.6s ease-out forwards;
  opacity: 0;
}
.form_wrapper h2 {
  font-size: 1.5em;
  line-height: 1.5em;
  margin: 0;
}
.form_wrapper .title_container {
  text-align: center;
  padding-bottom: 15px;
}
.form_wrapper h3 {
  font-size: 1.1em;
  font-weight: normal;
  line-height: 1.5em;
  margin: 0;
}
.form_wrapper label {
  font-size: 12px;
}
.form_wrapper .row {
  margin: 10px -15px;
}
.form_wrapper .row > div {
  padding: 0 15px;
  box-sizing: border-box;
}
.form_wrapper .col_half {
  width: 50%;
  float: left;
}
.form_wrapper .col_quarter {
  width: 25%;
  float: left;
}
.form_wrapper .input_field {
  position: relative;
  margin-bottom: 20px;
  -webkit-animation: bounce 0.6s ease-out;
  animation: bounce 0.6s ease-out;
}
.form_wrapper .input_field > span {
  position: absolute;
  left: 0;
  top: 0;
  color: #333;
  height: 100%;
  border-right: 1px solid #cccccc;
  text-align: center;
  width: 30px;
}
.form_wrapper .input_field > span > i {
  padding-top: 10px;
}
.form_wrapper .textarea_field > span > i {
  padding-top: 10px;
}
.form_wrapper input[type="text"], .form_wrapper input[type="tel"], .form_wrapper input[type="password"] {
  width: 100%;
  padding: 8px 10px 9px 35px;
  height: 35px;
  border: 1px solid #cccccc;
  box-sizing: border-box;
  outline: none;
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  transition: all 0.30s ease-in-out;
}
.form_wrapper input[type="text"]:hover, .form_wrapper input[type="tel"]:hover, .form_wrapper input[type="password"]:hover {
  background: #fafafa;
}
.form_wrapper input[type="text"]:focus, .form_wrapper input[type="tel"]:focus, .form_wrapper input[type="password"]:focus {
  -webkit-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
  -moz-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
  box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
  border: 1px solid #f5ba1a;
  background: #fafafa;
}
.form_wrapper input[type="submit"] {
  background: #f5ba1a;
  height: 35px;
  line-height: 35px;
  width: 100%;
  border: none;
  outline: none;
  cursor: pointer;
  color: #fff;
  font-size: 1.1em;
  margin-bottom: 10px;
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  transition: all 0.30s ease-in-out;
}
.form_wrapper input[type="submit"]:hover {
  background: #e1a70a;
}
.form_wrapper input[type="submit"]:focus {
  background: #e1a70a;
}
.mydrop:focus{
    -webkit-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
  -moz-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
  box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
  border: 1px solid #f5ba1a;
  background: #fafafa;
}
.mydrop:hover{
    background: #fafafa;
}
.mydrop{
      width: 100%;
  padding: 8px 10px 9px 35px;
  height: 35px;
  border: 1px solid #cccccc;
  box-sizing: border-box;
  outline: none;
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  transition: all 0.30s ease-in-out;
}

.form_container .row .col_half.last {
  border-left: 1px solid #cccccc;
}

.select_option {
  position: relative;
  width: 100%;
}
.select_option select {
  display: inline-block;
  width: 100%;
  height: 35px;
  padding: 0px 15px;
  cursor: pointer;
  color: #7b7b7b;
  border: 1px solid #cccccc;
  border-radius: 0;
  background: #fff;
  appearance: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  transition: all 0.2s ease;
}
.select_option select::-ms-expand {
  display: none;
}
.select_option select:hover, .select_option select:focus {
  color: #000000;
  background: #fafafa;
  border-color: #000000;
  outline: none;
}

.select_arrow {
  position: absolute;
  top: calc(50% - 4px);
  right: 15px;
  width: 0;
  height: 0;
  pointer-events: none;
  border-width: 8px 5px 0 5px;
  border-style: solid;
  border-color: #7b7b7b transparent transparent transparent;
}

.button {
  background: 	#FF8C00;
  height: 35px;
  line-height: 35px;
  width: 100%;
  border: none;
  outline: none;
  cursor: pointer;
  color: #fff;
  font-size: 1.1em;
  margin-bottom: 10px;
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  transition: all 0.30s ease-in-out;
}
.button:hover {
  background: #e1a70a;
}
.button:focus {
  background: #e1a70a;
}

.select_option select:hover + .select_arrow, .select_option select:focus + .select_arrow {
  border-top-color: #000000;
}

.credit {
  display: none;
  position: relative;
  z-index: 1;
  text-align: center;
  padding: 15px;
  color: #f5ba1a;
}
.credit a {
  color: #e1a70a;
}

@-webkit-keyframes check {
  0% {
    height: 0;
    width: 0;
  }
  25% {
    height: 0;
    width: 7px;
  }
  50% {
    height: 20px;
    width: 7px;
  }
}
@keyframes check {
  0% {
    height: 0;
    width: 0;
  }
  25% {
    height: 0;
    width: 7px;
  }
  50% {
    height: 20px;
    width: 7px;
  }
}
@-webkit-keyframes expand {
  0% {
    -webkit-transform: scale3d(1, 0, 1);
    opacity: 0;
  }
  25% {
    -webkit-transform: scale3d(1, 1.2, 1);
  }
  50% {
    -webkit-transform: scale3d(1, 0.85, 1);
  }
  75% {
    -webkit-transform: scale3d(1, 1.05, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    opacity: 1;
  }
}
@keyframes expand {
  0% {
    -webkit-transform: scale3d(1, 0, 1);
    transform: scale3d(1, 0, 1);
    opacity: 0;
  }
  25% {
    -webkit-transform: scale3d(1, 1.2, 1);
    transform: scale3d(1, 1.2, 1);
  }
  50% {
    -webkit-transform: scale3d(1, 0.85, 1);
    transform: scale3d(1, 0.85, 1);
  }
  75% {
    -webkit-transform: scale3d(1, 1.05, 1);
    transform: scale3d(1, 1.05, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes bounce {
  0% {
    -webkit-transform: translate3d(0, -25px, 0);
    opacity: 0;
  }
  25% {
    -webkit-transform: translate3d(0, 10px, 0);
  }
  50% {
    -webkit-transform: translate3d(0, -6px, 0);
  }
  75% {
    -webkit-transform: translate3d(0, 2px, 0);
  }
  100% {
    -webkit-transform: translate3d(0, 0, 0);
    opacity: 1;
  }
}
@keyframes bounce {
  0% {
    -webkit-transform: translate3d(0, -25px, 0);
    transform: translate3d(0, -25px, 0);
    opacity: 0;
  }
  25% {
    -webkit-transform: translate3d(0, 10px, 0);
    transform: translate3d(0, 10px, 0);
  }
  50% {
    -webkit-transform: translate3d(0, -6px, 0);
    transform: translate3d(0, -6px, 0);
  }
  75% {
    -webkit-transform: translate3d(0, 2px, 0);
    transform: translate3d(0, 2px, 0);
  }
  100% {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    opacity: 1;
  }
}
@media (max-width: 600px) {
  .form_wrapper .col_half {
    width: 100%;
    float: none;
  }

  .bottom_row .col_half {
    width: 50%;
    float: left;
  }

  .form_container .row .col_half.last {
    border-left: none;
  }

  .remember_me {
    padding-bottom: 20px;
  }
}
 </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    <div class="form_wrapper" style="margin-top:100px;margin-left:550px;">
	<div class="form_container">
		<div class="title_container">
			<h2>Add Supplier</h2>
		</div>
		<div class="row clearfix">
			<div class="">
                 
					 <label>
                         <asp:RequiredFieldValidator id="suppliernamereq" runat="server" ControlToValidate="suppliername" ErrorMessage="Name is required!" SetFocusOnError="True" Display="Dynamic" />
					 </label>
                    <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-user"></i>
						</span>
						<asp:TextBox runat="server" type="text" name="suppliername" id="suppliername" placeholder="suppliername" required />
					</div>
                     <label>
                         <asp:RequiredFieldValidator id="divisionReq" runat="server" ControlToValidate="division" ErrorMessage="Division is required!" SetFocusOnError="True" Display="Dynamic" />
					 </label>
                    <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-user"></i>
						</span>
                        <asp:DropDownList class="mydrop" ID="division" runat="server" DataSourceID="SqlDataSource1" DataTextField="Division" DataValueField="Division">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [Division] FROM [ItemsCatalog]"></asp:SqlDataSource>
                    </div>
					<label>
                        <asp:RequiredFieldValidator id="countryReq" runat="server" ControlToValidate="country" ErrorMessage="Country Name is required!" SetFocusOnError="True" Display="Dynamic" />
					</label>
						<div class="input_field"> 
						<span><i aria-hidden="true" class="fa fa-globe">
							</i>
						</span>
                        <asp:TextBox runat="server" type="text" name="country" id="country" placeholder="Country Of Origin"  />
                        </div>
					<label>
                         <asp:RequiredFieldValidator id="contactpersonReq" runat="server"   ControlToValidate="contactperson" ErrorMessage="contact person name is required!" SetFocusOnError="True"  Display="Dynamic" />
                    </label>
                <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-users"></i>
						</span>
                        
						<asp:TextBox runat="server" type="text" name="contactperson" id="contactperson" placeholder="Contact Person Name" />
				</div>
              
                   <label>
                         <asp:RequiredFieldValidator id="contactnoreq" runat="server" ControlToValidate="contactno" ErrorMessage="Do not leave the field blank!" SetFocusOnError="True" Display="Dynamic" />
					
                   </label>
                  <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-phone"></i>
						</span>
                       
						<asp:TextBox runat="server" type="tel" name="contactno" id="contactno" placeholder="Contact Number" pattern="^\d{4}-\d{3}-\d{4}$" />
					</div>
                <br />
                <button runat="server" onserverclick="addsupplier" id='submitdata' class="button" type="submit" value="Register">SUBMIT</button>
			</div>
		</div>
	</div>
</div>
  <script src='https://use.fontawesome.com/723b3db6c5.js'></script>

  

    <script  src="assets/js/index.js"></script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Procurement.Master" AutoEventWireup="true" CodeBehind="modal.aspx.cs" Inherits="ArailProjectControlApplication.modal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Materials Information</h4>
            </div>
            <div class="modal-body">
				<p>Want to mention any additional details?</p>
                    <div class="form-group">
                        <asp:TextBox runat="server" id="textarea" mode="multiline" type="text" class="form-control" placeholder="Additional Information" style="height:150px;"/>
                    </div>
                <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                <button runat="server" onserverclick="materialsdetails" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</div>
</asp:Content>

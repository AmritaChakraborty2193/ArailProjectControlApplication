<%@ Page Title="" Language="C#" MasterPageFile="~/Drawing.Master" AutoEventWireup="true" CodeBehind="Drawing.aspx.cs" Inherits="ArailProjectControlApplication.Drawing1" %>
<%@ Register Src="~/UploadedFilesContainer.ascx" TagPrefix="uc1" TagName="UploadedFilesContainer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="assets/js/Demo.js"></script>
    <script type="text/javascript">
        function onFileUploadComplete(s, e) {
            if(e.callbackData) {
                var fileData = e.callbackData.split('|');
                var fileName = fileData[0],
                    fileUrl = fileData[1],
                    fileSize = fileData[2];
            }
            DXUploadedFilesContainer.AddFile(fileName, fileUrl, fileSize);
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
                 <div class="col-lg-11 col-xs-11">
                     <center><h1 style="color:#3c8dbc;">MATERIALS</h1></center>
                     <br />
                         <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ID" Theme="Office365" 
                OnRowUpdating="ASPxGridView1_RowUpdating">
                             <Settings ShowFilterRow="True" />
                             <SettingsSearchPanel Visible="True" />
                             <Columns>
                                 <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
                                 </dx:GridViewCommandColumn>
                                 <dx:GridViewDataTextColumn FieldName="ProjectName" VisibleIndex="1" ReadOnly="True">
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="ItemName" ReadOnly="True" VisibleIndex="2">
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="SupplierName" VisibleIndex="3" ReadOnly="True">
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="4" ReadOnly="True">
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="DrawingAttachments" VisibleIndex="5">
                                     <EditItemTemplate>
                                        <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
                                            NullText="Click here to browse files..." UploadMode="Advanced" UploadStorage="Azure" FileUploadMode="OnPageLoad"
                                            ShowProgressPanel="True" ShowUploadButton="True" OnFileUploadComplete="UploadControl_FileUploadComplete" ProgressBarSettings-ShowPosition="True">
                                            <AzureSettings AccountName="arailproject" ContainerName="projectattachments" />
                                            <AdvancedModeSettings EnableMultiSelect="False" EnableFileList="True" />
                                            <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.pptx,.jpeg,.gif,.png" />
                                            <ClientSideEvents FilesUploadStart="function(s, e) { DXUploadedFilesContainer.Clear(); }" FileUploadComplete="onFileUploadComplete" />
                                        </dx:ASPxUploadControl>
                                        <div>
                                            <uc1:UploadedFilesContainer ID="FileContainer" runat="server" Width="380" Height="180"
                                                NameColumnWidth="240" SizeColumnWidth="70" HeaderText="Uploaded files" UseExtendedPopup="True" />
                                        </div>
                                    </EditItemTemplate>
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="6" ReadOnly="True">
                                 </dx:GridViewDataTextColumn>
                             </Columns>
                         </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT        ItemsCatalog.ItemName, Materials.ID, Materials.DrawingAttachments, Projects.ProjectName, SupplierCatalog.SupplierName, SupplierCatalog.CountryOfOrigin
FROM            ItemsCatalog INNER JOIN
                         Materials ON ItemsCatalog.ItemID = Materials.ItemsID INNER JOIN
                         Projects ON Materials.ProjectId = Projects.ID INNER JOIN
                         SupplierCatalog ON Materials.SupplierID = SupplierCatalog.SupplierID" UpdateCommand="UPDATE Materials SET DrawingAttachments = @DrawingAttachments WHERE (ID = @ID)">
                             <UpdateParameters>
                                 <asp:Parameter Name="DrawingAttachments" />
                                 <asp:Parameter Name="ID" Type="Int32"/>
                             </UpdateParameters>
                     </asp:SqlDataSource>
                         

                  </div>
            </div>
         </section>
    </div>
</asp:Content>

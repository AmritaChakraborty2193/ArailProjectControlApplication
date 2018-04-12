<%@ Page Title="" Language="C#" MasterPageFile="~/Procurement.Master" AutoEventWireup="true" CodeBehind="Materials.aspx.cs" Inherits="ArailProjectControlApplication.Materials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <asp:Label ID="ProjectId" runat="server" Font-Bold="True" Font-Names="Rockwell Extra Bold" Font-Size="X-Large" Visible="False"></asp:Label>
             <asp:Label ID="ProjectName" runat="server" Font-Bold="True" Font-Names="Rockwell Extra Bold" Font-Size="X-Large" Text=""></asp:Label>
             <br />
             <br />
           
            <div class="row" style="text-align:center;">
                 <div class="col-lg-11 col-xs-11" style="width: 1000px; overflow: auto; ">
                   <dx:ASPxGridView ID="ASPxGridView1" AutoWidth="False" runat="server" DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Office365" AutoGenerateColumns="False">
                       <SettingsSearchPanel Visible="True" />
                            <Columns>
                                   <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                   </dx:GridViewCommandColumn>
                                   
                                   <dx:GridViewDataTextColumn  FieldName="ID" VisibleIndex="1" ReadOnly="True" >
                                       <EditFormSettings Visible="False" />
                                   </dx:GridViewDataTextColumn>
                                  
                                   <dx:GridViewDataTextColumn FieldName="ProjectName" ReadOnly="true" VisibleIndex="2">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="ProjectName" DataValueField="ProjectName"></asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:connect%>' SelectCommand="SELECT [ProjectName] FROM [Projects] WHERE ([ID] = @ID)">
                                                <SelectParameters>
                                                    <asp:QueryStringParameter QueryStringField="ID" Name="ID" Type="Int32"></asp:QueryStringParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="Items" VisibleIndex="3">
                                      <EditItemTemplate>
                                           <asp:DropDownList  AutoPostBack="True" ID="ddItems" runat="server" SelectedValue='<%# Bind("Items") %>'  DataSourceID="SqlDataSource2" DataTextField="Items" DataValueField="Items"></asp:DropDownList>
                                           <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect%>' SelectCommand="SELECT [Items] FROM [Supplier]"></asp:SqlDataSource>
                                      </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn  FieldName="SupplierName" VisibleIndex="4">
                                      <EditItemTemplate>
                                          <asp:DropDownList ID="ddSuppliers" runat="server" DataSourceID="SqlDataSource5" DataTextField="SupplierName" DataValueField="SupplierName"></asp:DropDownList>
                                          <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [SupplierName] FROM [Supplier]"></asp:SqlDataSource>
                                      </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>
                                   <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="5">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="ddCOO" runat="server" DataSourceID="SqlDataSource6" DataTextField="CountryOfOrigin" DataValueField="CountryOfOrigin"></asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:%>' SelectCommand="SELECT DISTINCT [CountryOfOrigin] FROM [Supplier]"></asp:SqlDataSource>
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="ContactPersonName" VisibleIndex="6">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="ddCPName" runat="server" DataSourceID="SqlDataSource7" DataTextField="ContactPerson" DataValueField="ContactPerson"></asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [ContactPerson] FROM [Supplier]"></asp:SqlDataSource>
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="ContactPersonNumber" VisibleIndex="7">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="ddCPNo" runat="server"></asp:DropDownList>
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="BOQ" VisibleIndex="8">
                                       <EditItemTemplate>
                                                <dx:ASPxUploadControl  UploadMode="Advanced" ShowProgressPanel="true" ClientInstanceName="uploadControl" ID="ASPxUploadControl1" runat="server" NullText="Document"  UploadStorage="FileSystem" AdvancedModeSettings-EnableFileList="True" ShowUploadButton="False" AdvancedModeSettings-EnableMultiSelect="False">
                                                </dx:ASPxUploadControl> 
                                        </EditItemTemplate>
                                    </dx:GridViewDataTextColumn>
                                 
                                   <dx:GridViewDataTextColumn FieldName="DrawingAttachments"  VisibleIndex="9">
                                        <EditItemTemplate>
                                                <dx:ASPxUploadControl  UploadMode="Advanced" ShowProgressPanel="true" ClientInstanceName="uploadControl1" ID="ASPxUploadControl2" runat="server" NullText="Document"  UploadStorage="FileSystem" AdvancedModeSettings-EnableFileList="True" ShowUploadButton="False" AdvancedModeSettings-EnableMultiSelect="False">
                                                </dx:ASPxUploadControl> 
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="SupplierRequestStatus" VisibleIndex="10">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="ClientRequestStatus" VisibleIndex="11">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="DocumentAttached" VisibleIndex="12">
                                        <EditItemTemplate>
                                                <dx:ASPxUploadControl  UploadMode="Advanced" ShowProgressPanel="true" ClientInstanceName="uploadControl2" ID="ASPxUploadControl3" runat="server" NullText="Document"  UploadStorage="FileSystem" AdvancedModeSettings-EnableFileList="True" ShowUploadButton="False" AdvancedModeSettings-EnableMultiSelect="False"> 
                                                </dx:ASPxUploadControl> 
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="SubmitalAttached" VisibleIndex="13">
                                        <EditItemTemplate>
                                                <dx:ASPxUploadControl  UploadMode="Advanced" ShowProgressPanel="true" ClientInstanceName="uploadControl3" ID="ASPxUploadControl14" runat="server" NullText="Document"  UploadStorage="FileSystem" AdvancedModeSettings-EnableFileList="True" ShowUploadButton="False" AdvancedModeSettings-EnableMultiSelect="False">
                                                </dx:ASPxUploadControl> 
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="RMTCref" VisibleIndex="14">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="CRSReceived" VisibleIndex="15">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="SecondSubmittal" VisibleIndex="16">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="Remarks" VisibleIndex="17">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="Consultant" VisibleIndex="18">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="ProjectId" VisibleIndex="19">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="ID" DataValueField="ID"></asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [ID] FROM [Projects] WHERE ([ID] = @ID)">
                                                <SelectParameters>
                                                    <asp:QueryStringParameter QueryStringField="ID" Name="ID" Type="Int32"></asp:QueryStringParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="AdditionalInfo" VisibleIndex="20">
                                   </dx:GridViewDataTextColumn>

                                   <dx:GridViewDataTextColumn FieldName="CODE" VisibleIndex="21">
                                   </dx:GridViewDataTextColumn>
                       </Columns>
                     </dx:ASPxGridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT ID, ProjectName, Items, SupplierName, CountryOfOrigin, ContactPersonName, ContactPersonNumber, BOQ, DrawingAttachments, SupplierRequestStatus, ClientRequestStatus, DocumentAttached, SubmitalAttached, RMTCref, CRSReceived, SecondSubmittal, Remarks, Consultant, ProjectId, AdditionalInfo, CODE FROM Materials WHERE (ProjectId = @ProjectId)" InsertCommand="INSERT INTO Materials(Items, SupplierName, CountryOfOrigin, ContactPersonName, ContactPersonNumber, BOQ, DrawingAttachments, SupplierRequestStatus, ClientRequestStatus, ProjectName, DocumentAttached, SubmitalAttached, RMTCref, CRSReceived, SecondSubmittal, Remarks, Consultant, ProjectId, AdditionalInfo, CODE) VALUES (@Items, @SupplierName, @CountryOfOrigin, @ContactPersonName, @ContactPersonNumber, @BOQ, @DrawingAttachments, @DrawingAttachments, @DrawingAttachments, @DrawingAttachments, @DocumentAttached, @SubmitalAttached, @RMTCref, @CRSReceived, @SecondSubmi, @Remarks, @Consultant, @ProjectId, @AdditionalInfo, @CODE)" UpdateCommand="UPDATE Materials SET Items = @Items, SupplierName = @SupplierName, CountryOfOrigin = @CountryOfOrigin, ContactPersonName = @ContactPersonName, ContactPersonNumber = @ContactPersonNumber, BOQ = @BOQ, DrawingAttachments = @DrawingAttachments, SupplierRequestStatus = @SupplierRequestStatus, ClientRequestStatus = @ClientRequestStatus, DocumentAttached = @DocumentAttached, SubmitalAttached = @SubmittalAttached, RMTCref = @RMTCref, CRSReceived = @CRSReceived, SecondSubmittal = @SecondSubmittal, Remarks = @Remarks, Consultant = @Consultant, AdditionalInfo = @AdditionalInfo, CODE = @CODE WHERE (ID = @ID)">
                         <InsertParameters>
                             <asp:Parameter Name="Items" />
                             <asp:Parameter Name="SupplierName" />
                             <asp:Parameter Name="CountryOfOrigin" />
                             <asp:Parameter Name="ContactPersonName" />
                             <asp:Parameter Name="ContactPersonNumber" />
                             <asp:Parameter Name="BOQ" />
                             <asp:Parameter Name="DrawingAttachments" />
                             <asp:Parameter Name="DocumentAttached" />
                             <asp:Parameter Name="SubmitalAttached" />
                             <asp:Parameter Name="RMTCref" />
                             <asp:Parameter Name="CRSReceived" />
                             <asp:Parameter Name="SecondSubmi" />
                             <asp:Parameter Name="Remarks" />
                             <asp:Parameter Name="Consultant" />
                             <asp:Parameter Name="ProjectId" />
                             <asp:Parameter Name="AdditionalInfo" />
                             <asp:Parameter Name="CODE" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:QueryStringParameter Name="ProjectId" QueryStringField="ID" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="Items" />
                             <asp:Parameter Name="SupplierName" />
                             <asp:Parameter Name="CountryOfOrigin" />
                             <asp:Parameter Name="ContactPersonName" />
                             <asp:Parameter Name="ContactPersonNumber" />
                             <asp:Parameter Name="BOQ" />
                             <asp:Parameter Name="DrawingAttachments" />
                             <asp:Parameter Name="SupplierRequestStatus" />
                             <asp:Parameter Name="ClientRequestStatus" />
                             <asp:Parameter Name="DocumentAttached" />
                             <asp:Parameter Name="SubmittalAttached" />
                             <asp:Parameter Name="RMTCref" />
                             <asp:Parameter Name="CRSReceived" />
                             <asp:Parameter Name="SecondSubmittal" />
                             <asp:Parameter Name="Remarks" />
                             <asp:Parameter Name="Consultant" />
                             <asp:Parameter Name="AdditionalInfo" />
                             <asp:Parameter Name="CODE" />
                             <asp:Parameter Name="ID" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                  </div>
            </div>
         </section>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminMaterials.aspx.cs" Inherits="ArailProjectControlApplication.AdminMaterials" %>
<%@ Register Src="~/UploadedFilesContainer.ascx" TagPrefix="uc1" TagName="UploadedFilesContainer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="assets/js/Demo.js"></script> 
    <script type="text/javascript">
        var command;

        function onBeginCallback(s, e) {
            command = e.command;
        }

        function onEndCallback(s, e) {
            if (command == "STARTEDIT") {
               
                ASPxGridView2.StartEditRowByKey(grid.cpEditKey);
                ASPxGridView3.StartEditRowByKey(grid.cpEditKey);
                ASPxGridView4.StartEditRowByKey(grid.cpEditKey);
                ASPxGridView5.StartEditRowByKey(grid.cpEditKey);
                ASPxGridView6.StartEditRowByKey(grid.cpEditKey);
            }
            else if (command == "ADDNEWROW") {
                ASPxGridView2.AddNewRow();
                ASPxGridView2.StartEditRow(-1);
                ASPxGridView3.AddNewRow();
                ASPxGridView3.StartEditRow(-1);
                ASPxGridView4.AddNewRow();
                ASPxGridView4.StartEditRow(-1);
                ASPxGridView5.AddNewRow();
                ASPxGridView5.StartEditRow(-1);
                ASPxGridView6.AddNewRow();
                ASPxGridView6.StartEditRow(-1);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
   <section class="content">
        <div class="row" style="text-align:center;">
           &nbsp;<asp:Label ID="ProjectId" runat="server" Font-Bold="True" Font-Names="Rockwell Extra Bold" Font-Size="X-Large" Visible="False"></asp:Label>
           <asp:Label ID="ProjectName" runat="server" Font-Bold="True" Font-Names="Rockwell Extra Bold" Font-Size="X-Large" Text=""></asp:Label>
           <br />
           <br />
           <div class="col-lg-11 col-xs-11" style="width: 1000px; overflow: auto; ">
               <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ID" Theme="Office365">
                   <ClientSideEvents BeginCallback="onBeginCallback" EndCallback="onEndCallback" />
                   <SettingsSearchPanel Visible="True" />
                   <Columns>
                       <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                       </dx:GridViewCommandColumn>
                       <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="1"></dx:GridViewDataTextColumn>
                       <dx:GridViewDataTextColumn FieldName="SupplierName" VisibleIndex="2"></dx:GridViewDataTextColumn>
                       <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="3"></dx:GridViewDataTextColumn>
                       <dx:GridViewDataTextColumn FieldName="ContactPersonName" VisibleIndex="4"></dx:GridViewDataTextColumn>
                       <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="false" VisibleIndex="5">
                           <EditFormSettings Visible="False" />
                       </dx:GridViewDataTextColumn>
                       <dx:GridViewDataTextColumn FieldName="ProjectId"  Visible="false" VisibleIndex="6">
                       </dx:GridViewDataTextColumn>
                   </Columns>
                   <Templates>
                        <EditForm>
                            <div style="padding: 4px 3px 4px">
                               <dx:ASPxPageControl runat="server" ID="pageControl" Width="100%">
                                  <TabPages>
                                      <dx:TabPage Text="Items" Visible="true" >
                                         <ContentCollection>
                                             <dx:ContentControl runat="server">
                                                 <dx:ASPxGridView ID="ASPxGridView2" runat="server" Theme="Office365" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" KeyFieldName="ItemID" ClientInstanceName="ASPxGridView2"
                                            OnBeforePerformDataSelect="ASPxGridView_BeforePerformDataSelect">
                                                     <Columns>
                                                         <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                                         <dx:GridViewDataTextColumn FieldName="SubItem" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                         <dx:GridViewDataTextColumn FieldName="Category" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                         <dx:GridViewDataTextColumn FieldName="Division" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                         <dx:GridViewDataTextColumn FieldName="ItemID" ReadOnly="True" VisibleIndex="4">
                                                             <EditFormSettings Visible="False"></EditFormSettings>
                                                         </dx:GridViewDataTextColumn>
                                                         <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="5">
                                                             <EditFormSettings Visible="False"></EditFormSettings>
                                                         </dx:GridViewDataTextColumn>
                                                     </Columns>
                                                 </dx:ASPxGridView>
                                                 <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' ProviderName="System.Data.SqlClient" SelectCommand="SELECT ItemsCatalog.ItemName, ItemsCatalog.SubItem, ItemsCatalog.Category, ItemsCatalog.Division, ItemsCatalog.ItemID, Materials.ID FROM ItemsCatalog INNER JOIN Materials ON ItemsCatalog.ItemID = Materials.ItemsID WHERE (Materials.ID = @ID)">
                                                     <SelectParameters>
                                                         <asp:SessionParameter SessionField="ID" Name="ID"></asp:SessionParameter>
                                                         <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId"></asp:QueryStringParameter>
                                                     </SelectParameters>
                                                 </asp:SqlDataSource>
                                             </dx:ContentControl>
                                          </ContentCollection>
                                       </dx:TabPage>
                                    </TabPages>
                                   <TabPages>
                                      <dx:TabPage Text="Suppliers" Visible="true" >
                                         <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="ASPxGridView3" runat="server" Theme="Office365" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" KeyFieldName="SupplierID" ClientInstanceName="ASPxGridView3"
                                            OnBeforePerformDataSelect="ASPxGridView_BeforePerformDataSelect">
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="SupplierID" ReadOnly="True" VisibleIndex="0">
                                                            <EditFormSettings Visible="False"></EditFormSettings>
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="SupplierName" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Division" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ContactPersonName" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ContactPersonNumber" VisibleIndex="5"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="6">
                                                            <EditFormSettings Visible="False"></EditFormSettings>
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ProjectId" VisibleIndex="7"></dx:GridViewDataTextColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:connect %>' ProviderName="System.Data.SqlClient" SelectCommand="SELECT SupplierCatalog.SupplierID, SupplierCatalog.SupplierName, SupplierCatalog.Division, SupplierCatalog.CountryOfOrigin, SupplierCatalog.ContactPersonName, SupplierCatalog.ContactPersonNumber, Materials.ID, Materials.ProjectId FROM Materials INNER JOIN SupplierCatalog ON Materials.SupplierID = SupplierCatalog.SupplierID WHERE (Materials.ID = @ID) AND (Materials.ProjectId = @ProjectId)">
                                                    <SelectParameters>
                                                        <asp:SessionParameter SessionField="ID" Name="ID"></asp:SessionParameter>
                                                        <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId"></asp:QueryStringParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:ContentControl>
                                          </ContentCollection>
                                       </dx:TabPage>
                                    </TabPages>
                                   <TabPages>
                                      <dx:TabPage Text="Attachments" Visible="true" >
                                         <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="ASPxGridView4" runat="server" Theme="Office365" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" ClientInstanceName="ASPxGridView4"
                                            OnBeforePerformDataSelect="ASPxGridView_BeforePerformDataSelect">
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="BOQ" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="DrawingAttachments" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="SubmittalAttached" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="CRSReceivedAttachment" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Delivery_Note" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:connect %>' ProviderName="System.Data.SqlClient" SelectCommand="SELECT BOQ, DrawingAttachments, SubmittalAttached, CRSReceivedAttachment, Delivery_Note FROM Materials WHERE (ID = @ID) AND (ProjectId = @ProjectId)">
                                                    <SelectParameters>
                                                        <asp:SessionParameter SessionField="ID" Name="ID"></asp:SessionParameter>
                                                        <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId"></asp:QueryStringParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:ContentControl>
                                          </ContentCollection>
                                       </dx:TabPage>
                                    </TabPages>
                                   <TabPages>
                                      <dx:TabPage Text="Contracts and Delivery" Visible="true" >
                                         <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="ASPxGridView5" runat="server" Theme="Office365" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" ClientInstanceName="ASPxGridView5"
                                            OnBeforePerformDataSelect="ASPxGridView_BeforePerformDataSelect">
                                                    <Columns>
                                                        <dx:GridViewDataDateColumn FieldName="PO/Contracts_ScheduleDate" VisibleIndex="0"></dx:GridViewDataDateColumn>
                                                        <dx:GridViewDataDateColumn FieldName="PO/Contracts_ActualDate" VisibleIndex="1"></dx:GridViewDataDateColumn>
                                                        <dx:GridViewDataTextColumn FieldName="PO/Contracts_Number" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataDateColumn FieldName="Delivery_ScheduleDate" VisibleIndex="3"></dx:GridViewDataDateColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Delivery_Note" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataDateColumn FieldName="Delivery_ActualDate" VisibleIndex="5"></dx:GridViewDataDateColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:connect %>' ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PO/Contracts_ScheduleDate], [PO/Contracts_ActualDate], [PO/Contracts_Number], Delivery_ScheduleDate, Delivery_Note, Delivery_ActualDate FROM Materials WHERE (ID = @ID) AND (ProjectId = @ProjectId)">
                                                    <SelectParameters>
                                                        <asp:SessionParameter SessionField="ID" Name="ID"></asp:SessionParameter>
                                                        <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId"></asp:QueryStringParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:ContentControl>
                                          </ContentCollection>
                                       </dx:TabPage>
                                    </TabPages>
                                   <TabPages>
                                      <dx:TabPage Text="Others" Visible="true" >
                                         <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="ASPxGridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" Theme="Office365" ClientInstanceName="ASPxGridView6"
                                            OnBeforePerformDataSelect="ASPxGridView_BeforePerformDataSelect">
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="CODE" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="AdditionalInfo" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Consultant" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Remarks" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="SubmittalSentToClient" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="CRSReceived" VisibleIndex="5"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ClientRequestStatus" VisibleIndex="6"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="SupplierRequestStatus" VisibleIndex="7"></dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataDateColumn FieldName="DrawingDate" VisibleIndex="8"></dx:GridViewDataDateColumn>
                                                        <dx:GridViewDataDateColumn FieldName="BOQDate" VisibleIndex="9"></dx:GridViewDataDateColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:connect %>' ProviderName="System.Data.SqlClient" SelectCommand="SELECT CODE, AdditionalInfo, Consultant, Remarks, SubmittalSentToClient, CRSReceived, ClientRequestStatus, SupplierRequestStatus, DrawingDate, BOQDate FROM Materials WHERE (ID = @ID) AND (ProjectId = @ProjectId)">
                                                    <SelectParameters>
                                                        <asp:SessionParameter SessionField="ID" Name="ID"></asp:SessionParameter>
                                                        <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId"></asp:QueryStringParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:ContentControl>
                                          </ContentCollection>
                                       </dx:TabPage>
                                    </TabPages>
                                 </dx:ASPxPageControl>
                                    <di BV  v style="text-align: right;">
                                        <dx:ASPxGridViewTemplateReplacement ID="UpdateButtonReplacement" ReplacementType="EditFormUpdateButton"
                                            runat="server"></dx:ASPxGridViewTemplateReplacement>
                                        <dx:ASPxGridViewTemplateReplacement ID="CancelButtonReplacement" ReplacementType="EditFormCancelButton"
                                            runat="server"></dx:ASPxGridViewTemplateReplacement>
                                    </di>
                               </div>
                        </EditForm>
                  </Templates>
               </dx:ASPxGridView>
               <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT ItemsCatalog.ItemName, SupplierCatalog.SupplierName, SupplierCatalog.CountryOfOrigin, SupplierCatalog.ContactPersonName, Materials.ID, Materials.ProjectId FROM ItemsCatalog INNER JOIN Materials ON ItemsCatalog.ItemID = Materials.ItemsID INNER JOIN SupplierCatalog ON Materials.SupplierID = SupplierCatalog.SupplierID WHERE (Materials.ProjectId = @ID) AND (Materials.ProjectId = @ProjectId)">
                   <SelectParameters>
                       <asp:QueryStringParameter QueryStringField="ID" Name="ID"></asp:QueryStringParameter>
                   </SelectParameters>
               </asp:SqlDataSource>
           </div>
         </div>
    </section>
</div>
</asp:Content>
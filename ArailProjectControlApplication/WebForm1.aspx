<%@ Page Title="" Language="C#" MasterPageFile="~/Procurement.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ArailProjectControlApplication.WebForm1" %>
<%@ Register assembly="DevExpress.Web.v17.2,Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
                 <asp:Label ID="ProjectId" runat="server" Font-Bold="True" Font-Names="Rockwell Extra Bold" Font-Size="X-Large" Visible="False"></asp:Label>
                 <asp:Label ID="ProjectName" runat="server" Font-Bold="True" Font-Names="Rockwell Extra Bold" Font-Size="X-Large" Text=""></asp:Label>
                 <br />
                 <br />
                <div class="col-lg-11 col-xs-11" style="width: 1000px; overflow: auto; ">
                    <dx:ASPxGridView ID="grid" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Theme="Office365" KeyFieldName="ID">
                        <SettingsSearchPanel Visible="True" />
                        <Columns>
                            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True" VisibleIndex="0">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="1">             
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="SupplierName" VisibleIndex="2">  
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="3">      
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ContactPersonName" VisibleIndex="4">  
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ContactPersonNumber" VisibleIndex="5">     
                            </dx:GridViewDataTextColumn> 
                        </Columns>
                        <SettingsPopup>
                            <EditForm Width="500" Modal="true" >
                                 <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="500" />
                            </EditForm>
                        </SettingsPopup>
            <Templates>
                 <EditForm>
                     <div style="padding: 4px 3px 4px">
                     <dx:ASPxPageControl runat="server" ID="pageControl" Width="100%">
                        <TabPages>
                            <dx:TabPage Text="Items" Visible="true" >
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" Theme="Office365" KeyFieldName="ItemID" OnBeforePerformDataSelect="productsGrid_DataSelect">
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True" VisibleIndex="0">
                                                 </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="ItemID" ReadOnly="True" VisibleIndex="0">
                                                    <EditFormSettings Visible="False"></EditFormSettings>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Category" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Division" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                            </Columns> 
                                            <SettingsPopup>
                                                <EditForm Width="500" Modal="true" >
                                                     <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="500" />
                                                </EditForm>
                                            </SettingsPopup>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT ItemsCatalog.ItemID, ItemsCatalog.ItemName, ItemsCatalog.Category, ItemsCatalog.Division FROM ItemsCatalog INNER JOIN Materials ON ItemsCatalog.ItemID = Materials.ItemsID WHERE (Materials.ProjectId = @ID)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="ID" Name="ID"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage> 
                             <dx:TabPage Text="Suppliers" Visible="true" >
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" OnBeforePerformDataSelect="productsGrid_DataSelect" AutoGenerateColumns="False" Theme="Office365" DataSourceID="SqlDataSource3" KeyFieldName="SupplierID">

                                            <Columns>
                                                <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True" VisibleIndex="0">
                                                  </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="SupplierID" ReadOnly="True" VisibleIndex="0">
                                                    <EditFormSettings Visible="False"></EditFormSettings>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="SupplierName" VisibleIndex="1">
                                                    <EditItemTemplate>
                                                        <dx:ASPxListBox ID="lbFeatures" runat="server" SelectionMode="CheckColumn" EnableSelectAll="true" 
                                                            DataSourceID="ddSuppliersMaterialssource" ValueField="SupplierName" ValueType="System.String" TextField="SupplierName">
                                                            <CaptionSettings Position="Top" />
                                                        </dx:ASPxListBox>
                                                        <asp:SqlDataSource runat="server" ID="ddSuppliersMaterialssource" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [SupplierName] FROM [SupplierCatalog] WHERE [SupplierName] IS NOT NULL"></asp:SqlDataSource>
                                                    </EditItemTemplate>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ContactPersonName" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ContactPersonNumber" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                            </Columns> 
                                            <SettingsPopup>
                                                <EditForm Width="500" Modal="true" >
                                                     <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="500" />
                                                </EditForm>
                                            </SettingsPopup>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT SupplierCatalog.SupplierID, SupplierCatalog.SupplierName, SupplierCatalog.CountryOfOrigin, SupplierCatalog.ContactPersonName, SupplierCatalog.ContactPersonNumber FROM Materials INNER JOIN SupplierCatalog ON Materials.SupplierID = SupplierCatalog.SupplierID WHERE (Materials.ProjectId = @ID)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="ID" Name="ID"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                             <dx:TabPage Text="Attachments" Visible="true" >
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="ASPxGridView3" runat="server" Theme="Office365" OnBeforePerformDataSelect="productsGrid_DataSelect" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" KeyFieldName="ID">

                                            <Columns>
                                                <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True" VisibleIndex="0">
                                                 </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="BOQ" VisibleIndex="0">
                                                    <EditItemTemplate>
                                                         <dx:ASPxUploadControl ID="BOQupload" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                            NullText="Click here to browse files..." UploadMode="Advanced" UploadStorage="Azure" FileUploadMode="OnPageLoad"
                                                            ShowUploadButton="True" ShowProgressPanel="True">
               
                                                            <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                             <ValidationSettings MaxFileSize="4194304"  />
                                                          </dx:ASPxUploadControl> 
                                                    </EditItemTemplate>

                                                </dx:GridViewDataTextColumn>

                                                <dx:GridViewDataTextColumn FieldName="DrawingAttachments" VisibleIndex="1">
                                                    <EditItemTemplate>
                                                             <dx:ASPxUploadControl ID="DrawingAttachmentsupload" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                                NullText="Click here to browse files..." UploadMode="Advanced" UploadStorage="Azure" FileUploadMode="OnPageLoad"
                                                                ShowUploadButton="True" ShowProgressPanel="True">
               
                                                                <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                                <ValidationSettings MaxFileSize="4194304"  />
                                                             </dx:ASPxUploadControl> 
                                                    </EditItemTemplate>

                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="DocumentAttached" VisibleIndex="2">
                                                    <EditItemTemplate>
                                                         <dx:ASPxUploadControl ID="DocumentAttachedUpload" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                                NullText="Click here to browse files..." UploadMode="Advanced" UploadStorage="Azure" FileUploadMode="OnPageLoad"
                                                                ShowUploadButton="True" ShowProgressPanel="True">
               
                                                                <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                                <ValidationSettings MaxFileSize="4194304"  />
                                                         </dx:ASPxUploadControl> 
                                                  </EditItemTemplate>

                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="SubmitalAttached" VisibleIndex="3">
                                                    <EditItemTemplate>
                                                         <dx:ASPxUploadControl ID="SubmitalAttachedUpload" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                                NullText="Click here to browse files..." UploadMode="Advanced" UploadStorage="Azure" FileUploadMode="OnPageLoad"
                                                                ShowUploadButton="True" ShowProgressPanel="True">
               
                                                                <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                                <ValidationSettings MaxFileSize="4194304"  />
                                                         </dx:ASPxUploadControl> 
                                                    </EditItemTemplate>

                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="SecondSubmittal" VisibleIndex="4">
                                                    <EditItemTemplate>
                                                         <dx:ASPxUploadControl ID="SecondSubmittalUpload" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                                NullText="Click here to browse files..." UploadMode="Advanced" UploadStorage="Azure" FileUploadMode="OnPageLoad"
                                                                ShowUploadButton="True" ShowProgressPanel="True">
               
                                                                <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                                <ValidationSettings MaxFileSize="4194304"  />
                                                         </dx:ASPxUploadControl> 
                                                    </EditItemTemplate>

                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ID" Visible="false" VisibleIndex="5" ReadOnly="True">
                                                    <EditFormSettings Visible="False"></EditFormSettings>
                                                </dx:GridViewDataTextColumn>
                                            </Columns> 
                                            <SettingsPopup>
                                                <EditForm Width="500" Modal="true" >
                                                     <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="500" />
                                                </EditForm>
                                            </SettingsPopup>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [BOQ], [DrawingAttachments], [DocumentAttached], [SubmitalAttached], [SecondSubmittal], [ID] FROM [Materials] WHERE ([ProjectId] = @ProjectId)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId" Type="Int32"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Contracts and Delivery" Visible="true" >
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="ASPxGridView4" runat="server" OnBeforePerformDataSelect="productsGrid_DataSelect" Theme="Office365" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" KeyFieldName="ID">

                                            <Columns>
                                                <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True" VisibleIndex="0">
                                                 </dx:GridViewCommandColumn>
                                                <dx:GridViewDataDateColumn FieldName="Contracts_SheduleDate" VisibleIndex="0"></dx:GridViewDataDateColumn>
                                                <dx:GridViewDataDateColumn FieldName="Contracts_AnualDate" VisibleIndex="1"></dx:GridViewDataDateColumn>
                                                <dx:GridViewDataTextColumn FieldName="Contracts_Number" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataDateColumn FieldName="Delivery_ScheduleDate" VisibleIndex="3"></dx:GridViewDataDateColumn>
                                                <dx:GridViewDataTextColumn FieldName="Delivery_Contracts" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataDateColumn FieldName="Delivery_AnualDate" VisibleIndex="5"></dx:GridViewDataDateColumn>
                                                <dx:GridViewDataTextColumn FieldName="ID" Visible="false" VisibleIndex="6" ReadOnly="True">
                                                    <EditFormSettings Visible="False"></EditFormSettings>
                                                </dx:GridViewDataTextColumn>
                                            </Columns> 
                                            <SettingsPopup>
                                                <EditForm Width="500" Modal="true" >
                                                     <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="500" />
                                                </EditForm>
                                            </SettingsPopup>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [Contracts_SheduleDate], [Contracts_AnualDate], [Contracts_Number], [Delivery_ScheduleDate], [Delivery_Contracts], [Delivery_AnualDate], [ID] FROM [Materials] WHERE ([ProjectId] = @ProjectId)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId" Type="Int32"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                             <dx:TabPage Text="Others" Visible="true" >
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="ASPxGridView5" runat="server" OnBeforePerformDataSelect="productsGrid_DataSelect" Theme="Office365" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" KeyFieldName="ID">
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True" VisibleIndex="0">
                                                </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="SupplierRequestStatus" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ClientRequestStatus" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="CRSReceived" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Remarks" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Consultant" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="AdditionalInfo" VisibleIndex="5"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="CODE" VisibleIndex="6">
                                                      <EditItemTemplate>
                                                          <asp:DropDownList ID="DropDownList1" runat="server">
                                                             <asp:ListItem>CODE A</asp:ListItem>
                                                             <asp:ListItem>CODE B</asp:ListItem>
                                                             <asp:ListItem>CODE C</asp:ListItem>                                    
                                                          </asp:DropDownList>
                                                     </EditItemTemplate>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ID" Visible="false" VisibleIndex="7" ReadOnly="True">
                                                    <EditFormSettings Visible="False"></EditFormSettings>
                                                </dx:GridViewDataTextColumn>
                                            </Columns> 
                                            <SettingsPopup>
                                                <EditForm Width="500" Modal="true" >
                                                     <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="500" />
                                                </EditForm>
                                            </SettingsPopup>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [SupplierRequestStatus], [ClientRequestStatus], [CRSReceived], [Remarks], [Consultant], [AdditionalInfo], [CODE], [ID] FROM [Materials] WHERE ([ProjectId] = @ProjectId)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="ID" Name="ProjectId" Type="Int32"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
               </div>
                <div style="text-align: right;" >
                    <dx:ASPxGridViewTemplateReplacement ID="UpdateButtonReplacement" ReplacementType="EditFormUpdateButton"
                        runat="server">
                    </dx:ASPxGridViewTemplateReplacement>
                    <dx:ASPxGridViewTemplateReplacement ID="CancelButtonReplacement" ReplacementType="EditFormCancelButton"
                        runat="server">
                    </dx:ASPxGridViewTemplateReplacement>
                </div>
            </EditForm>
        </Templates>
                    </dx:ASPxGridView>   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT ItemsCatalog.ItemName, SupplierCatalog.SupplierName, SupplierCatalog.CountryOfOrigin, SupplierCatalog.ContactPersonName, SupplierCatalog.ContactPersonNumber, Materials.ID FROM ItemsCatalog INNER JOIN Materials ON ItemsCatalog.ItemID = Materials.ItemsID INNER JOIN Projects ON Materials.ProjectId = Projects.ID INNER JOIN SupplierCatalog ON Materials.SupplierID = SupplierCatalog.SupplierID WHERE (Materials.ProjectId = @ID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                 </div>
             </div>
          </section>
        </div>
</asp:Content>

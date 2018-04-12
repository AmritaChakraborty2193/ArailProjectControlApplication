<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewSuppliers.aspx.cs" Inherits="ArailProjectControlApplication.ViewSuppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
            <div class="col-lg-11 col-xs-11">
                     <center>
                         <h1 style="color:#3c8dbc;">Suppliers </h1>
                       <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="SupplierID" Theme="Office365">
                           <SettingsSearchPanel Visible="True" />
                           <Columns>
                               <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                               </dx:GridViewCommandColumn>
                               <dx:GridViewDataTextColumn FieldName="SupplierID" Visible="false" ReadOnly="True" VisibleIndex="1">
                                   <EditFormSettings Visible="False" />
                               </dx:GridViewDataTextColumn>
                               <dx:GridViewDataTextColumn FieldName="SupplierName" VisibleIndex="2">
                               </dx:GridViewDataTextColumn>
                               <dx:GridViewDataTextColumn FieldName="Division" VisibleIndex="3">
                                   <EditItemTemplate>
                                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Division" DataValueField="Division">                                  
                                          </asp:DropDownList>
                                          <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [Division] FROM [ItemsCatalog]"></asp:SqlDataSource>
                                    </EditItemTemplate>
                               </dx:GridViewDataTextColumn>
                               <dx:GridViewDataTextColumn FieldName="CountryOfOrigin" VisibleIndex="4">
                               </dx:GridViewDataTextColumn>
                               <dx:GridViewDataTextColumn FieldName="ContactPersonName" VisibleIndex="5">
                               </dx:GridViewDataTextColumn>
                               <dx:GridViewDataTextColumn FieldName="ContactPersonNumber" VisibleIndex="6">
                               </dx:GridViewDataTextColumn>
                           </Columns>
                         </dx:ASPxGridView>  
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM SupplierCatalog WHERE (SupplierID = @SupplierID)" InsertCommand="INSERT INTO SupplierCatalog(SupplierName, Division, CountryOfOrigin, ContactPersonName, ContactPersonNumber) VALUES (@SupplierName, @Division, @CountryOfOrigin, @ContactPersonName, @ContactPersonNumber)" SelectCommand="SELECT * FROM [SupplierCatalog]" UpdateCommand="UPDATE SupplierCatalog SET SupplierName = @SupplierName, CountryOfOrigin = @CountryOfOrigin, ContactPersonName = @ContactPersonName, Division = @Division, ContactPersonNumber = @ContactPersonNumber WHERE (SupplierID = @SupplierID)">
                             <DeleteParameters>
                                 <asp:Parameter Name="SupplierID" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="SupplierName" />
                                 <asp:Parameter Name="Division" />
                                 <asp:Parameter Name="CountryOfOrigin" />
                                 <asp:Parameter Name="ContactPersonName" />
                                 <asp:Parameter Name="ContactPersonNumber" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="SupplierName" />
                                 <asp:Parameter Name="CountryOfOrigin" />
                                 <asp:Parameter Name="ContactPersonName" />
                                 <asp:Parameter Name="Division" />
                                 <asp:Parameter Name="ContactPersonNumber" />
                                 <asp:Parameter Name="SupplierID" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                      </center>
                </div>
            </div>
         </section>
    </div>
</asp:Content>

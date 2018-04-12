<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewItem.aspx.cs" Inherits="ArailProjectControlApplication.ViewItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
            <div class="col-lg-11 col-xs-11">
                     <center>
                         <h1 style="color:#3c8dbc;">Items </h1>
                             <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ItemID" Theme="Office365">
                                 <SettingsSearchPanel Visible="True" />
                                 <Columns>
                                     <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                     </dx:GridViewCommandColumn>
                                     <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="1">
                                     </dx:GridViewDataTextColumn>
                                     <dx:GridViewDataTextColumn FieldName="SubItem" VisibleIndex="2">
                                     </dx:GridViewDataTextColumn>
                                     <dx:GridViewDataTextColumn FieldName="Category" VisibleIndex="3">

                                     </dx:GridViewDataTextColumn>
                                     <dx:GridViewDataTextColumn FieldName="Division" VisibleIndex="4">
                                         <EditItemTemplate>
                                                  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Division" DataValueField="Division">                            
                                                  </asp:DropDownList>
                                                  <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [Division] FROM [ItemsCatalog]"></asp:SqlDataSource>
                                            </EditItemTemplate>
                                     </dx:GridViewDataTextColumn>
                                     <dx:GridViewDataTextColumn FieldName="ItemID" ReadOnly="True" VisibleIndex="5">
                                         <EditFormSettings Visible="False" />
                                     </dx:GridViewDataTextColumn>
                                 </Columns>
                         </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM ItemsCatalog WHERE (ItemID = @ItemID)" InsertCommand="INSERT INTO ItemsCatalog(ItemName, SubItem, Category, Division) VALUES (@ItemName, @SubItem, @Category, @Division)" SelectCommand="SELECT ItemName, SubItem, Category, Division, ItemID FROM ItemsCatalog" UpdateCommand="UPDATE ItemsCatalog SET ItemName = @ItemName, SubItem = @SubItem, Category = @Category, Division = @Division WHERE (ItemID = @ItemID)">
                             <DeleteParameters>
                                 <asp:Parameter Name="ItemID" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="ItemName" />
                                 <asp:Parameter Name="SubItem" />
                                 <asp:Parameter Name="Category" />
                                 <asp:Parameter Name="Division" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="ItemName" />
                                 <asp:Parameter Name="SubItem" />
                                 <asp:Parameter Name="Category" />
                                 <asp:Parameter Name="Division" />
                                 <asp:Parameter Name="ItemID" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
            </div>
            
            </div>
         </section>
    </div>
</asp:Content>

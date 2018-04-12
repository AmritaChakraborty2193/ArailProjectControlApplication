<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAdmin.aspx.cs" Inherits="ArailProjectControlApplication.ViewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
            <div class="col-lg-11 col-xs-11">
                     <center>
                         <h1 style="color:#3c8dbc;">USERS </h1>
                         <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Name" Theme="Office365">
                             <Settings ShowFilterRow="True" />
                             <SettingsSearchPanel Visible="True" />
                             <Columns>
                                 <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
                                 </dx:GridViewCommandColumn>
                                 <dx:GridViewDataTextColumn FieldName="Name" ReadOnly="True" VisibleIndex="1">
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="Password" VisibleIndex="2" >
                                 </dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="Department" VisibleIndex="3">
                                     <EditItemTemplate>
                                          <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Admin</asp:ListItem>
                                                <asp:ListItem>Procurement</asp:ListItem>
                                                 <asp:ListItem>Procurement User</asp:ListItem>
                                                <asp:ListItem>BOQ</asp:ListItem>
                                                <asp:ListItem>Drawing</asp:ListItem>                                    
                                          </asp:DropDownList>
                                     </EditItemTemplate>
                                 </dx:GridViewDataTextColumn>
                             </Columns>
                         </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT Name, Password, Department FROM Users" UpdateCommand="UPDATE Users SET Password = @Password, Department = @Department WHERE (Name = @Name)">
                             <UpdateParameters>
                                 <asp:Parameter Name="Password" />
                                 <asp:Parameter Name="Name" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                         <br/>
             
            </div>
         </section>
    </div>
</asp:Content>

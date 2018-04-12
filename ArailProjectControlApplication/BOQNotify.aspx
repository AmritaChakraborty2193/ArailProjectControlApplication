<%@ Page Title="" Language="C#" MasterPageFile="~/BOQ.Master" AutoEventWireup="true" CodeBehind="BOQNotify.aspx.cs" Inherits="ArailProjectControlApplication.BOQNotify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
                 <div class="col-lg-11 col-xs-11">
                     <center><h1 style="color:#3c8dbc;">NEARING DUE DATES</h1><br />
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Theme="Office365" EnableTheming="True" KeyFieldName="ID">
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ProjectName" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="ProjectStartDate" VisibleIndex="3">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataDateColumn FieldName="ProjectEndDate" VisibleIndex="4">
                                </dx:GridViewDataDateColumn>                               
                                <dx:GridViewDataTextColumn FieldName="owner" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>                               
                                <dx:GridViewDataTextColumn FieldName="BOQ" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>                                
                                <dx:GridViewDataDateColumn FieldName="BOQDate" VisibleIndex="5">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="ID" Visible="false" ReadOnly="True" VisibleIndex="7">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT ItemsCatalog.ItemName, Projects.ProjectName, Projects.ProjectStartDate, Projects.ProjectEndDate, Projects.owner, Materials.BOQ, Materials.BOQDate, Materials.ID FROM ItemsCatalog INNER JOIN Materials ON ItemsCatalog.ItemID = Materials.ItemsID INNER JOIN Projects ON Materials.ProjectId = Projects.ID WHERE (Materials.BOQ = '') AND (Projects.ProjectEndDate &gt; DATEADD(DAY, - 30, GETDATE()))" UpdateCommand="UPDATE Materials SET BOQ = @BOQ WHERE (ProjectName = @ProjectName)">
                             <UpdateParameters>
                                 <asp:Parameter Name="BOQ" />
                                 <asp:Parameter Name="ProjectName" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                      </center>
                  </div>
             </div>
         </section>
    </div>
</asp:Content>

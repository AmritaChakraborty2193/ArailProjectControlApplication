<%@ Page Title="" Language="C#" MasterPageFile="~/Drawing.Master" AutoEventWireup="true" CodeBehind="DrawingNotify.aspx.cs" Inherits="ArailProjectControlApplication.DrawingNotify" %>
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
                                <dx:GridViewDataDateColumn FieldName="DrawingDate" VisibleIndex="6">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="ID" Visible="false" VisibleIndex="0" ReadOnly="True">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="DrawingAttachments" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ProjectName" VisibleIndex="2" >
                                 </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="owner" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="ProjectEndDate" VisibleIndex="4">
                                </dx:GridViewDataDateColumn> 
                                <dx:GridViewDataDateColumn FieldName="ProjectStartDate" VisibleIndex="5">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="ItemName" VisibleIndex="1" >
                                </dx:GridViewDataTextColumn>           
                            </Columns>
                        </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT Materials.DrawingDate, Materials.ID, Materials.DrawingAttachments, Projects.ProjectName, Projects.owner, Projects.ProjectEndDate, Projects.ProjectStartDate, ItemsCatalog.ItemName FROM ItemsCatalog INNER JOIN Materials ON ItemsCatalog.ItemID = Materials.ItemsID INNER JOIN Projects ON Materials.ProjectId = Projects.ID WHERE (Materials.DrawingAttachments = '') AND (Projects.ProjectEndDate &gt; DATEADD(DAY, - 30, GETDATE()))" UpdateCommand="UPDATE Materials SET DrawingAttachments = @DrawingAttachments WHERE (ProjectName = @ProjectName)">
                             <UpdateParameters>
                                 <asp:Parameter Name="DrawingAttachments" />
                                 <asp:Parameter Name="ProjectName" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                      </center>
                  </div>
             </div>
         </section>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Procurement.Master" AutoEventWireup="true" CodeBehind="Overdue.aspx.cs" Inherits="ArailProjectControlApplication.Overdue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
                 <div class="col-lg-11 col-xs-11">
                     <center><h1 style="color:#3c8dbc;">NEARING DUE DATES</h1><br />
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Theme="Office365" EnableTheming="True">
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="ProjectName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="ProjectStartDate" VisibleIndex="1">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataDateColumn FieldName="ProjectEndDate" VisibleIndex="2">
                                </dx:GridViewDataDateColumn>
                                
                                <dx:GridViewDataTextColumn FieldName="PenidngDays" ReadOnly="True" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                
                            </Columns>
                        </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT P.ID, P.ProjectName, P.ProjectStartDate, P.ProjectEndDate, DATEDIFF(DAY, GETDATE(), P.ProjectEndDate) AS 'PenidngDays' FROM Projects AS P INNER JOIN Materials AS M ON M.ProjectId = P.ID WHERE (M.BOQ = '') OR (M.DrawingAttachments = '') AND (P.ProjectEndDate &gt; DATEADD(DAY, - 30, GETDATE()))"></asp:SqlDataSource>
                      </center>
                  </div>
             </div>
         </section>
    </div>
</asp:Content>

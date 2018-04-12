<%@ Page Title="" Language="C#" MasterPageFile="~/ProcurementUser.Master" AutoEventWireup="true" CodeBehind="AllProjectsUser.aspx.cs" Inherits="ArailProjectControlApplication.AllProjectsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script type="text/javascript">
        function OnCustomButtonClick(s, e) {
            switch (e.buttonID) {
                case "Material":
                    var Url = "ProcurementUserMaterials.aspx?ID=" + s.GetRowKey(e.visibleIndex) + "";
                    window.open(Url, '', '');
                    break
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
         <section class="content">
            <div class="row" style="text-align:center;">
                 <div class="col-lg-11 col-xs-11">
                     <center><h1 style="color:#3c8dbc;">ALL PROJECTS</h1><br />
                     <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="ID" DataSourceID="SqlDataSource2" Theme="Office365">
                         <SettingsSearchPanel Visible="True" />
                         <ClientSideEvents CustomButtonClick="function(s, e) { OnCustomButtonClick(s, e); }" />
                         <Columns>
                           
                             <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
                             </dx:GridViewCommandColumn>
                             <dx:GridViewCommandColumn  VisibleIndex="1">
                                 <CustomButtons>
                                    <dx:GridViewCommandColumnCustomButton  ID="Material" Text="Material">
                                         <Image ToolTip="Redirect ">
                                         </Image>   
                                    </dx:GridViewCommandColumnCustomButton>
                                 </CustomButtons>
                             </dx:GridViewCommandColumn>
                             <dx:GridViewDataTextColumn FieldName="ProjectName" VisibleIndex="2" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataTextColumn FieldName="Client" VisibleIndex="3" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataDateColumn FieldName="ProjectStartDate" VisibleIndex="4" ShowInCustomizationForm="True">
                             </dx:GridViewDataDateColumn>
                             <dx:GridViewDataTextColumn FieldName="Consultant" VisibleIndex="5" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataDateColumn FieldName="ProjectEndDate" VisibleIndex="6" ShowInCustomizationForm="True">
                             </dx:GridViewDataDateColumn>
                             <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="7" ShowInCustomizationForm="True">
                                 <EditFormSettings Visible="False" />
                             </dx:GridViewDataTextColumn>
                         </Columns>
                        </dx:ASPxGridView>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [ID],[ProjectName], [Client], [ProjectStartDate], [Consultant], [ProjectEndDate] FROM [Projects] WHERE ([owner] = @owner)" UpdateCommand="UPDATE Projects SET ProjectName = @ProjectName, Client = @Client, Consultant = @Consultant, ProjectStartDate = @ProjectStartDate, ProjectEndDate = @ProjectEndDate, owner = @owner WHERE (ID = @ID)">
                             <SelectParameters>
                                 <asp:SessionParameter Name="owner" SessionField="user" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                         
                         </center>
                  </div>
             </div>
         </section>
    </div>
</asp:Content>

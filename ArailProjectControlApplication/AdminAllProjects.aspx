<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminAllProjects.aspx.cs" Inherits="ArailProjectControlApplication.AdminAllProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
        function OnCustomButtonClick(s, e) {
            switch (e.buttonID) {
                case "Material":
                    var Url = "AdminMaterials.aspx?ID=" + s.GetRowKey(e.visibleIndex) + "";
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
                     <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ID" Theme="Office365">
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
                             <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="2" ShowInCustomizationForm="True">
                                 <EditFormSettings Visible="False" />
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataTextColumn FieldName="ProjectName" VisibleIndex="3" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataTextColumn FieldName="Client" VisibleIndex="4" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataTextColumn FieldName="Consultant" VisibleIndex="5" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>
                             <dx:GridViewDataDateColumn FieldName="ProjectStartDate" VisibleIndex="7" ShowInCustomizationForm="True">
                             </dx:GridViewDataDateColumn>
                             <dx:GridViewDataDateColumn FieldName="ProjectEndDate" VisibleIndex="8" ShowInCustomizationForm="True">
                             </dx:GridViewDataDateColumn>
                             <dx:GridViewDataTextColumn FieldName="owner" VisibleIndex="9" ShowInCustomizationForm="True">
                             </dx:GridViewDataTextColumn>    
                         </Columns>
                     </dx:ASPxGridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [Projects]" UpdateCommand="UPDATE Projects SET ProjectName = @ProjectName, Client = @Client, Consultant = @Consultant, ProjectStartDate = @ProjectStartDate, ProjectEndDate = @ProjectEndDate, owner = @owner WHERE (ID = @ID)">
                         <UpdateParameters>
                             <asp:Parameter Name="ProjectName" />
                             <asp:Parameter Name="Client" />
                             <asp:Parameter Name="Consultant" />
                             <asp:Parameter Name="ProjectStartDate" />
                             <asp:Parameter Name="ProjectEndDate" />
                             <asp:Parameter Name="owner" />
                             <asp:Parameter Name="ID" />
                         </UpdateParameters>
                         </asp:SqlDataSource>
                      </center>
                  </div>
             </div>
         </section>
    </div>

</asp:Content>

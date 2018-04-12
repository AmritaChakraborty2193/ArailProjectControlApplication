<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaterialGrid.aspx.cs" Inherits="ArailProjectControlApplication.MaterialGrid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua" style="height:150px;">
            <div class="inner">
              <h4>Create New</h4>

              <p>New Project</p><br/>
            </div>
            <div class="icon">
              <i class="ion ion-plus"></i>
            </div>
            <a href="#" class="small-box-footer">Show All<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green" style="height:150px;">
            <div class="inner">
              <h4>Document Library</h4>

              <p>View all documents related to project in a single view</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-attach"></i>
            </div>
            <a href="#" class="small-box-footer">Search <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow" style="height:150px;">
            <div class="inner">
              <h4>Overdue</h4>

              <p>You can view all items which will be due in the next 7 days</p>
            </div>
            <div class="icon">
              <i class="ion ion-calendar"></i>
            </div>
            <a href="#" class="small-box-footer">Take Actions<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
           </div>
    </section>
         <section class="content">
      <div class="row">
          <div class="col-lg-11 col-xs-11">
              <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" Theme="iOS">
                  <Settings ShowFilterRow="True" />
                  <SettingsSearchPanel Visible="True" />
                  <Columns>
                     
                      <dx:GridViewDataTextColumn FieldName="BOQ" VisibleIndex="1">
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="DrawingAttachments" VisibleIndex="2">
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="SubmitalAttached" VisibleIndex="3">
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="DocumentAttached" VisibleIndex="4">
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="RMTCref" VisibleIndex="5">
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="CRSReceived" VisibleIndex="6">
                      </dx:GridViewDataTextColumn>
                       <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                      </dx:GridViewCommandColumn>
                  </Columns>
              </dx:ASPxGridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [BOQ], [DrawingAttachments], [SubmitalAttached], [DocumentAttached], [RMTCref], [CRSReceived] FROM [Materials]"></asp:SqlDataSource>
          </div>
       </div><br />
       <div class="row">
          <div class="col-lg-1 col-xs-1" style="float:right;">
              <img src="assets/images/add.png" height="70" width="70"/>
           </div>
       </div>
      </section>
    <!-- /.content -->
  </div>
</asp:Content>

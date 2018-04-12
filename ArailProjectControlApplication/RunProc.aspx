<%@ Page Title="" Language="C#" MasterPageFile="~/Procurement.Master" AutoEventWireup="true" CodeBehind="RunProc.aspx.cs" Inherits="ArailProjectControlApplication.RunProc" %>
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
    <!-- /.content -->
  </div>

</asp:Content>

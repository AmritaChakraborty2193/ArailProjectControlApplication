<%@ Page Title="" Language="C#" MasterPageFile="~/Procurement.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="ArailProjectControlApplication.Reports" %>

<%@ Register Assembly="DevExpress.XtraCharts.v17.2.Web, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
                .dropdownlist{
                width:100%;
	                padding:10px 10px 10px 35px;
	                border:1px solid #ccc;
	                box-sizing:border-box;
	                outline:none;
	                -webkit-transition: all 0.30s ease-in-out;
	                -moz-transition: all 0.30s ease-in-out;
	                -ms-transition: all 0.30s ease-in-out;
	                transition: all 0.30s ease-in-out;
                }
                .dropdownlist:focus
                {
                    -webkit-box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	                -moz-box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	                box-shadow:0 0 2px 1px rgba(255, 169, 0, 0.5);
	                border:1px solid #f5ba1a;
                }
          </style>
    <div class="content-wrapper" >
        <section class="content" style="width:50%;">  
            <label>Project Name</label>
            <asp:DropDownList class="dropdownlist" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProjectName" DataValueField="ProjectName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT Projects.ProjectName FROM   Projects INNER JOIN Materials ON Materials.ProjectId = Projects.ID ">
            </asp:SqlDataSource>
            <br />
            <br />
               
         </section>
         <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto">
             <script>

                 Highcharts.chart('container', {
                     chart: {
                         plotBackgroundColor: null,
                         plotBorderWidth: null,
                         plotShadow: false,
                         type: 'pie'
                     },
                     title: {
                         text: 'Materials Report'
                     },
                     tooltip: {
                         pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                     },
                     plotOptions: {
                         pie: {
                             allowPointSelect: true,
                             cursor: 'pointer',
                             dataLabels: {
                                 enabled: true,
                                 format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                 style: {
                                     color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                 }
                             }
                         }
                     },
                     series: [{
                         name: 'Materials',
                         colorByPoint: true,
                         data: [{
                             name: 'CODE A',
                             y: <%=CodeA%>,
                             sliced: true,
                             selected: true
                         }, {
                             name: 'CODE B',
                             y:<%=CodeB%>,
                         }, {
                             name: 'CODE C',
                             y: <%=CodeC%>,
                         }]
                     }]
                 });
                 exporting: { enabled: false }

                  </script>
             
  </div>
     </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="acc_list_report.aspx.cs" Inherits="IMS.acc_list_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Report List</h1>
    <div class="list-group">
        <!-- -->
        <a href="" class="list-group-item">Total Costs by Engineer</a>
        <!-- -->
        <a href="" class="list-group-item">Average Costs by Engineer</a>
        <!-- -->
        <a href="" class="list-group-item">Costs by District</a>
        <!-- -->
        <a href="" class="list-group-item">Monthly Costs for District</a>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT userName AS 'Site Engineer', SUM(labour) AS 'Total Labour Hours', SUM(cost) AS 'Total Cost' FROM view_detail_interventions WHERE status = 'Completed' GROUP BY userName ORDER BY userName ASC"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT userName AS 'Site Engineer', AVG(labour) AS 'Average Hours', AVG(cost) AS 'Average Cost' FROM view_detail_interventions WHERE status='Completed' GROUP BY userName ORDER BY userName ASC"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT Districts, SUM(labour) as 'Total Labour Hours', SUM(cost) as 'Total Labour Cost' FROM view_detail_interventions WHERE status='Completed' GROUP BY Districts ORDER BY Districts ASC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT sum(labour) as 'Grand Total Labour', sum(cost) as 'Grand Total Cost' FROM view_detail_interventions WHERE status='Completed'"></asp:SqlDataSource>

    <asp:GridView ID="ReportGridView1" runat="server" AutoGenerateColumns="true" DataSourceID="SqlDataSource1" />
    <asp:GridView ID="ReportGridView2" runat="server" AutoGenerateColumns="true" DataSourceID="SqlDataSource2" />
    <asp:GridView ID="ReportGridView3" runat="server" AutoGenerateColumns="true" DataSourceID="SqlDataSource3" />
    <asp:GridView ID="ReportGridView4" runat="server" AutoGenerateColumns="true" DataSourceID="SqlDataSource4" />
</asp:Content>

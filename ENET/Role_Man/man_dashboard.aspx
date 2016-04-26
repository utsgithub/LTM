<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_dashboard.aspx.cs" Inherits="IMS.man_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manager Dashboard</h1>
    <div class="list-group">
        <!-- -->
        <a runat="server" href="man_list_intervention" class="list-group-item">See a list of “Proposed” interventions that he/she can approve (i.e., a list of interventions that satisfy the business rules)</a>
        <!-- -->
    </div>
</asp:Content>

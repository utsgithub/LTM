<%@ Page Title="Site Engineer Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_dashboard.aspx.cs" Inherits="IMS.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Site Engineer Dashboard</h1>
    <div class="list-group">
        <!-- -->
        <a runat="server" href="~/eng_create_client" class="list-group-item">Create a client in his/her district</a>
        <!-- -->
        <a runat="server" href="~/eng_list_client" class="list-group-item">View a list of all clients in his/her district</a>
        <!-- -->
        <a runat="server" href="~/eng_detail_client" class="list-group-item">View the details of a client, and their associated interventions</a>
        <!-- -->
        <a runat="server" href="~/eng_detail_intervention" class="list-group-item">View the details of an intervention and edit the Quality Management Information</a>
        <!-- -->
        <a runat="server" href="~/eng_create_intervention" class="list-group-item">Create a new intervention for a client in his/her district</a>
        <!-- -->
        <a runat="server" href="~/eng_list_invervention" class="list-group-item">View a list of interventions that he/she has previously created</a>
        <!-- -->
        <a runat="server" href="~/eng_edit_intervention" class="list-group-item">Change the state of an intervention that he/she has previously created (e.g., “Approved” to “Completed”)</a>
    </div>
</asp:Content>

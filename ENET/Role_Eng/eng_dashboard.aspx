<%@ Page Title="Site Engineer Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_dashboard.aspx.cs" Inherits="IMS.eng_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Site Engineer Dashboard</h1>
    <div class="list-group none" style="display:none;">
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
    <div class="row">
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="../Images/Distributor-report-icon.png" alt="View a list of all clients in his/her district">
                <div class="caption">
                    <h3>Client List</h3>
                    <p>
                        <a href="eng_list_client" runat="server" class="btn btn-primary">Go to</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="../Images/sales-report-icon.png" alt="View a list of interventions that he/she has previously created">
                <div class="caption">
                    <h3>Interventions List</h3>
                    <p>
                        <a runat="server" class="btn btn-primary" href="eng_list_invervention">Go to</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="Site Engineer Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_dashboard.aspx.cs" Inherits="IMS.eng_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Site Engineer Dashboard</h1>

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
                        <a runat="server" class="btn btn-primary" href="eng_list_intervention">Go to</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

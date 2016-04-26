<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="acc_dashboard.aspx.cs" Inherits="IMS.acc_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Accountant Dashboard</h1>
    <div class="row">
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="Images/Distributor-report-icon.png" alt="See a list of all Site Engineers and Managers">
                <div class="caption">
                    <h3>User List</h3>
                    <p>
                        <a href="~/acc_list_users.aspx" runat="server" class="btn btn-primary">Go to</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="Images/sales-report-icon.png" alt="Manager">
                <div class="caption">
                    <h3>Report</h3>
                    <p>
                        <a runat="server" class="btn btn-primary" href="~/acc_list_report.aspx">Go to</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

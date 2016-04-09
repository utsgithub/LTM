<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ENET.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Accountant Dashboard</h1>
    <div class="list-group">
        <!-- -->
        <a runat="server" href="~/acc_list_users" class="list-group-item">See a list of all Site Engineers and Managers</a>
        <!-- -->
        <a runat="server" href="~/acc_edit_district" class="list-group-item">Change the current district of a Site Engineer or Manager</a>
        <!-- -->
        <a runat="server" href="~/acc_list_report" class="list-group-item">Run any report</a>
    </div>
</asp:Content>

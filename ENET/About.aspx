<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IMS.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Hello,
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>; </h2>
    <h3>You are "<asp:Label ID="lblType" runat="server" Text=""></asp:Label>"</h3>
    <div class="list-group">
        <!-- -->
        <a href="~/eng_dashboard" runat="server" class="list-group-item">Go to Site Engineer Dashboard</a>
        <!-- -->
        <a href="~/acc_dashboard" runat="server" class="list-group-item">Go to Accountant Dashboard</a>
        <!-- -->
        <a href="~/man_dashboard" runat="server" class="list-group-item">Go to Manager Dashboard</a>
        <asp:LinkButton ID="LBSessionClear" CssClass="list-group-item" runat="server" Text="Session.Abandon()" OnClick="LBSessionClear_Click"></asp:LinkButton>
    </div>
</asp:Content>

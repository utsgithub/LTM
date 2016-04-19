<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Intervention Monitoring System</h1>
        <p class="lead">
            Welcome to the Intervention Monitoring System exclusively developed for the wonderful people at ENET Care. Get started
            now and start some interventions right away.
        </p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="Images/User-Executive-Green-icon.png" alt="Site Engineer">
                <div class="caption">
                    <h3>Site Engineer</h3>
                    <p>
                        <asp:Button ID="ButtonE" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="ButtonE_Click" /></p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="Images/User-Administrator-Blue-icon.png" alt="Manager">
                <div class="caption">
                    <h3>Manager</h3>
                    <p>
                        <asp:Button ID="ButtonM" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="ButtonM_Click" /></p>
                </div>
            </div>
        </div>
       <div class="col-md-3">
            <div class="thumbnail">
                <img src="Images/Office-Girl-icon.png" alt="Accountant">
                <div class="caption">
                    <h3>Accountant</h3>
                    <p>
                        <asp:Button ID="ButtonA" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="ButtonA_Click" /></p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="Images/1461091232_user-admin.png" style="height:256px;" alt="Nobody">
                <div class="caption">
                    <h3>Without Login</h3>
                    <p><a runat="server" href="~/About.aspx" class="btn btn-primary" role="button">Login</a></p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

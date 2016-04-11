<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="acc_list_users.aspx.cs" Inherits="IMS.acc_list_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>User List</h1>
    <asp:GridView ID="ListAllUsersGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="users_ID" HeaderText="ID" />
            <asp:HyperLinkField DataTextField="userName" HeaderText="Name" DataNavigateUrlFields="users_ID" DataNavigateUrlFormatString="~\acc_edit_district.aspx?ID={0}" />
            <asp:BoundField DataField="userType" HeaderText="User Type" />
            <asp:BoundField DataField="Districts" HeaderText="District" />
        </Columns>
    </asp:GridView>
</asp:Content>

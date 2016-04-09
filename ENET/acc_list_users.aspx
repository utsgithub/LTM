<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="acc_list_users.aspx.cs" Inherits="ENET.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>User List</h1>
    <table width="100%" class="table table-bordered table-hover table-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>User Type</th>
            <th>District </th>
        </tr>
        <tr>
            <td>1</td>
            <td><a runat="server" href="~/acc_edit_district">Tim</a></td>
            <td>Site Engineer</td>
            <td>Urban Indonesia</td>
        </tr>
        <tr>
            <td>2</td>
            <td><a runat="server" href="~/acc_edit_district">John</a></td>
            <td>Site Engineer</td>
            <td>Rural Indonesia</td>
        </tr>
        <tr>
            <td>3</td>
            <td><a runat="server" href="~/acc_edit_district">Peter</a></td>
            <td>Manager</td>
            <td>Urban Papua New Guinea</td>
        </tr>
    </table>
</asp:Content>

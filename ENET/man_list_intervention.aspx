<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_list_intervention.aspx.cs" Inherits="ENET.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>“Proposed” interventions</h1>
    <table width="100%" class="table table-bordered table-hover table-striped">
        <tr>
            <th>intervention type</th>
            <th>client</th>
            <th>Site Engineer </th>
            <th>date </th>
        </tr>
        <tr>
            <td><a runat="server" href="~/man_edit_intervention">Supply and Install Portable Toilet</a></td>
            <td>Family of Josiah</td>
            <td>John</td>
            <td>2015/10/12</td>
        </tr>
        <tr>
            <td><a runat="server" href="~/man_edit_intervention">Hepatitis Avoidance Training</a></td>
            <td>Family of Ruth</td>
            <td>Tim</td>
            <td>2015/10/11</td>
        </tr>
        <tr>
            <td><a runat="server" href="~/man_edit_intervention">Supply and Install Storm-proof Home Kit</a></td>
            <td>Family of Peter</td>
            <td>Jeffery</td>
            <td>2015/10/11</td>
        </tr>
    </table>
</asp:Content>

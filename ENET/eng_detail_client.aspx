<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_client.aspx.cs" Inherits="IMS.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Client Information</h1>

    <table class="table">
        <tr>
            <th width="200" nowrap="nowrap">Name:</th>
            <td>Family of Josiah and Ruth</td>
        </tr>
        <tr>
            <th width="200" nowrap="nowrap">Descriptive:</th>
            <td>Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway</td>
        </tr>
        <tr>
            <th width="" nowrap="nowrap">District:</th>
            <td>Urban Indonesia</td>
        </tr>
    </table>
    <h1>Interventions List</h1>
    <a href="eng_create_intervention" class="btn btn-primary" style="margin: 20px 0px;">Create Intervention</a>
    <table width="100%" class="table table-bordered table-hover table-striped">
        <tr>
            <th>intervention type</th>
            <th>Status</th>
            <th>date </th>
        </tr>
        <tr>
            <td><a href="eng_edit_intervention">Supply and Install Portable Toilet</a></td>
            <td>Proposed</td>
            <td>2015/10/12</td>
        </tr>
        <tr>
            <td><a href="man_edit_intervention">Hepatitis Avoidance Training</a></td>
            <td>Approved</td>
            <td>2015/10/11</td>
        </tr>
        <tr>
            <td><a href="Supply and Install Storm-proof Home Kit">Supply and Install Storm-proof Home Kit</a></td>
            <td>Cancelled</td>
            <td>2015/10/11</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_list_client.aspx.cs" Inherits="IMS.eng_list_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Clients List</h1>
    <a class="btn btn-primary" style="margin-bottom: 20px;" href="eng_create_client">Create Client</a>
    <!-- ## PREVIOUS DEMO CODE
    <table width="100%" class="table table-bordered table-striped table-hover">
        <tr>
            <th>Name</th>
            <th>Descriptive</th>
            <th>District</th>
        </tr>
        <tr>
            <td><a href="eng_detail_client">Family of Josiah and Ruth</a></td>
            <td>Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway</td>
            <td>Urban Indonesia</td>
        </tr>
    </table>-->
    <asp:GridView ID="ListAllClientsGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:HyperLinkField DataTextField="name" HeaderText="Name" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~\eng_detail_client.aspx?ID={0}" />
            <asp:BoundField DataField="descriptive" HeaderText="Descriptive Location" />
            <asp:BoundField DataField="districts" HeaderText="District" />
        </Columns>
    </asp:GridView>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_list_intervention.aspx.cs" Inherits="IMS.man_list_intervention" %>

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
    <asp:GridView ID="ListAllman_list_intervention" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:boundfield DataField="interventionTypes_name" HeaderText="Intervention Type" />
            <asp:boundfield DataField="clients_name" HeaderText="Client" />
            <asp:boundfield DataField="userName" HeaderText="Site Engineer" />
            <asp:boundfield DataField="iDate" HeaderText="Date" />
           <%-- <asp:HyperLinkField DataTextField="" HeaderText="Name" DataNavigateUrlFields="clients_ID" DataNavigateUrlFormatString="~\eng_detail_client.aspx?ID={0}" />
            <asp:BoundField DataField="descriptive" HeaderText="Descriptive Location" />
            <asp:BoundField DataField="Districts" HeaderText="District" />--%>
            
        </Columns>
    </asp:GridView>
</asp:Content>

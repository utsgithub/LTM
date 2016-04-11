<%@ Page Title="Detailed Client View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_client.aspx.cs" Inherits="IMS.eng_detail_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Client Information</h1>

    <table class="table">
        <tr>
            <th width="200" nowrap="nowrap">Name:</th>
            <td><asp:Label ID="NameLabel" runat="server" /></td>
        </tr>
        <tr>
            <th width="200" nowrap="nowrap">Descriptive:</th>
            <td><asp:Label ID="DescriptiveLabel" runat="server" /></td>
        </tr>
        <tr>
            <th width="" nowrap="nowrap">District:</th>
            <td><asp:Label ID="DistrictLabel" runat="server" /></td>
        </tr>
    </table>
    <h1>Interventions List</h1>
    <a href="eng_create_intervention" class="btn btn-primary" style="margin: 20px 0px;">Create Intervention</a>
    <!--DEMO CLIENT INTERVENTION DETAIL
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
    </table>-->
    <asp:GridView ID="ListAllClientInterventionsGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="interventionTypes_name" HeaderText="Intervention Type" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="iDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
        </Columns>
    </asp:GridView>
</asp:Content>

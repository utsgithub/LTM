<%@ Page Title="Detailed Client View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_client.aspx.cs" Inherits="IMS.eng_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Client Information</h1>
    <table class="table">
        <tr>
            <th width="200" nowrap="nowrap">Name:</th>
            <td>
                <asp:Label ID="NameLabel" runat="server" /></td>
        </tr>
        <tr>
            <th width="200" nowrap="nowrap">Descriptive:</th>
            <td>
                <asp:Label ID="DescriptiveLabel" runat="server" /></td>
        </tr>
        <tr>
            <th width="" nowrap="nowrap">District:</th>
            <td>
                <asp:Label ID="DistrictLabel" runat="server" /></td>
        </tr>
    </table>
    <h1>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="descriptive" HeaderText="descriptive" SortExpression="descriptive" />
                <asp:BoundField DataField="Districts" HeaderText="Districts" SortExpression="Districts" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMSConnectionString %>" SelectCommand="SELECT [name], [descriptive], [Districts] FROM [view_client_list] WHERE ([clients_ID] = @clients_ID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="clients_ID" QueryStringField="cid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        Interventions List</h1>
    <a href="eng_create_intervention" class="btn btn-primary" style="margin: 20px 0px;">Create Intervention</a>
    <asp:GridView ID="ListAllClientInterventionsGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="interventionTypes_name" HeaderText="Intervention Type" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="iDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
        </Columns>
    </asp:GridView>
</asp:Content>

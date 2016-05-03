<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_create_client.aspx.cs" Inherits="IMS.Role_Eng.eng_create_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Create New Client</h1>
    <table class="table">
        <tr>
            <th width="200" nowrap="nowrap">Name:</th>
            <td>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtName"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th width="200" nowrap="nowrap">Descriptive:</th>
            <td>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDes"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th width="" nowrap="nowrap">District:</th>
            <td>

                <asp:DropDownList Enabled="false" runat="server" ID="ddDistrict" DataTextField="Districts" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th width="200" nowrap="nowrap"></th>
            <td>
                <asp:LinkButton runat="server" ID="btnSubmit" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click"></asp:LinkButton>
                <asp:HyperLink runat="server" CssClass="btn btn-default" NavigateUrl="eng_list_client.aspx" Text="Back"></asp:HyperLink>
            </td>
    </table>
</asp:Content>

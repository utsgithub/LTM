<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_create_client.aspx.cs" Inherits="ENET.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Create New Client</h1>
    <form>
        <table class="table">
            <tr>
                <th width="200" nowrap="nowrap">Name:</th>
                <td>
                    <input type="text" class="form-control" /></td>
            </tr>
            <tr>
                <th width="200" nowrap="nowrap">Descriptive:</th>
                <td>
                    <input type="text" class="form-control" /></td>
            </tr>
            <tr>
                <th width="" nowrap="nowrap">District:</th>
                <td>
                    <select class="form-control">
                        <option>Urban Indonesia</option>
                        <option>Rural Indonesia</option>
                        <option>Urban Papua New Guinea</option>
                        <option>Rural Papua New Guinea</option>
                        <option>Sydney</option>
                        <option>Rural New South Wales</option>
                    </select></td>
            </tr>

            <tr>
                <th width="200" nowrap="nowrap"></th>
                <td>
                    <input type="submit" value="Submit"></td>
        </table>
    </form>
</asp:Content>

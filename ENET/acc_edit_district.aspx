<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_create_client.aspx.cs" Inherits="ENET.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-9">
            <h1>Change the current district</h1>
            <table class="table">
                <tr>
                    <th>Name:</th>
                    <td>Tim</td>
                </tr>
                <tr>
                    <th>User Type:</th>
                    <td>Site Engineer</td>
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
                    <th></th>
                    <td><a class="btn btn-primary">Submit</a></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

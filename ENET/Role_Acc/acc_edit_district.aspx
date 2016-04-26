<%@ Page AutoEventWireup="true" CodeBehind="acc_edit_district.aspx.cs" Inherits="IMS.acc_edit_district" Language="C#" MasterPageFile="~/Site.Master" Title="Change the current district" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="rsAccEdit" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [users_ID], [userName], [Districts_ID], [Districts], [userType] FROM [view_users] WHERE ([users_ID] = @users_ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="users_ID" QueryStringField="uid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="row">
        <div class="col-md-9">
            <h1>Change the current district</h1>
            <asp:SqlDataSource ID="rsAccViewUsersRow" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [userName], [userType] FROM [view_users]">
            </asp:SqlDataSource>
            <asp:DetailsView runat="server" AutoGenerateRows="False" DataSourceID="rsAccViewUsersRow" GridLines="None" CssClass="table table-bordered">
                <Fields>
                    <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" HeaderStyle-Width="200" />
                    <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
                </Fields>
            </asp:DetailsView>
            <table class="table">
                <tr class="warning">
                    <th style="width: 200px;">Change District
                    </th>
                    <td>
                        <asp:SqlDataSource ID="rsDisLists" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [districts]"></asp:SqlDataSource>
                        <asp:DropDownList runat="server" ID="ddlDistinct" DataSourceID="rsDisLists" DataTextField="Districts" DataValueField="ID" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="warning">
                    <th></th>
                    <td>
                        <asp:LinkButton ID="LinkButtonSubmit" runat="server" CssClass="btn btn-primary" OnClick="LinkButtonSubmit_Click">Submit</asp:LinkButton>&nbsp;
                    <asp:HyperLink runat="server" CssClass="btn btn-default" NavigateUrl="acc_list_users.aspx">Back</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

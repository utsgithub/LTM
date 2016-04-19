<%@ Page AutoEventWireup="true" CodeBehind="acc_edit_district.aspx.cs" Inherits="IMS.acc_list_users" Language="C#" MasterPageFile="~/Site.Master" Title="Change the current district" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="rsAccEdit" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [users_ID], [userName], [Districts_ID], [Districts], [userType] FROM [view_users] WHERE ([users_ID] = @users_ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="users_ID" QueryStringField="uid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="row">
        <div class="col-md-9">
            <h1>Change the current district</h1>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="rsAccEdit" DefaultMode="Edit">
                <EditItemTemplate>
                    <table class="table">
                        <tr>
                            <th>users_ID:</th>
                            <th>
                                <asp:TextBox ID="users_IDTextBox" runat="server" Text='<%# Bind("users_ID") %>' />
                            <tr>
                                <th>User Name</th>
                                <td>
                                    <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' /></td>
                            </tr>
                        <tr>
                            <th>Districts_ID:</th>
                            <td>

                                <asp:TextBox ID="Districts_IDTextBox" runat="server" Text='<%# Bind("Districts_ID") %>' /></td>
                        </tr>
                        <tr>
                            <th>Districts:</th>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="rsDistricts" DataTextField="Districts" DataValueField="ID" SelectMethod="test">
                                    <asp:ListItem Value="<%# Bind("Districts_ID") %>" Text="<%# Bind("Districts") %>"/>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <th>userType:</th>
                            <td>
                                <asp:TextBox ID="userTypeTextBox" runat="server" Text='<%# Bind("userType") %>' /></td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                                <asp:LinkButton CssClass="btn btn-primary" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton CssClass="btn" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                        </tr>
                    </table>
                </EditItemTemplate>
            </asp:FormView>
        </div>
    </div>

    <asp:SqlDataSource ID="rsDistricts" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [districts]"></asp:SqlDataSource>
</asp:Content>

<%@ Page Title="Accountant Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="acc_list_users.aspx.cs" Inherits="IMS.acc_list_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>User List</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="users_IDLabel" runat="server" Text='<%# Eval("users_ID") %>' />
                </td>
                <td>
                    <asp:LinkButton ID="lnk_ViewDetails" runat="server" Text='<%# Bind("userName") %>' PostBackUrl='<%#"~/acc_edit_district?uid="+Eval("users_ID")%>'></asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="DistrictsLabel" runat="server" Text='<%# Eval("Districts") %>' />
                </td>
                <td>
                    <asp:Label ID="userTypeLabel" runat="server" Text='<%# Eval("userType") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-bordered table-striped table-hover">
                            <tr runat="server" style="">
                                <th runat="server">Users ID</th>
                                <th runat="server">User Name</th>
                                <th runat="server">Districts</th>
                                <th runat="server">User Type</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>        
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT users_ID, userName, Districts, userType FROM view_users WHERE (userType = 'Site Engineer') OR (userType = 'Manager')"></asp:SqlDataSource>
</asp:Content>

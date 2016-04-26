<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_list_intervention.aspx.cs" Inherits="IMS.man_list_intervention" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>“Proposed” interventions</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="rsProposedInterventions" DataKeyNames="coreInfo_ID">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="coreInfo_IDLabel" runat="server" Text='<%# Eval("coreInfo_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>
                    <asp:Label ID="iDateLabel" runat="server" Text='<%# Eval("iDate") %>' />
                </td>
                <td>
                    <asp:Label ID="loginNameLabel" runat="server" Text='<%# Eval("loginName") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="coreInfo_IDLabel1" runat="server" Text='<%# Eval("coreInfo_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="interventionTypes_nameTextBox" runat="server" Text='<%# Bind("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="iDateTextBox" runat="server" Text='<%# Bind("iDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="loginNameTextBox" runat="server" Text='<%# Bind("loginName") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="coreInfo_IDTextBox" runat="server" Text='<%# Bind("coreInfo_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="interventionTypes_nameTextBox" runat="server" Text='<%# Bind("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="iDateTextBox" runat="server" Text='<%# Bind("iDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="loginNameTextBox" runat="server" Text='<%# Bind("loginName") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="coreInfo_IDLabel" runat="server" Text='<%# Eval("coreInfo_ID") %>' />

                </td>
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>
                    <asp:Label ID="iDateLabel" runat="server" Text='<%# Eval("iDate") %>' />
                </td>
                <td>
                    <asp:Label ID="loginNameLabel" runat="server" Text='<%# Eval("loginName") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">coreInfo_ID</th>
                                <th runat="server">interventionTypes_name</th>
                                <th runat="server">userName</th>
                                <th runat="server">iDate</th>
                                <th runat="server">loginName</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder">
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
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="coreInfo_IDLabel" runat="server" Text='<%# Eval("coreInfo_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>
                    <asp:Label ID="iDateLabel" runat="server" Text='<%# Eval("iDate") %>' />
                </td>
                <td>
                    <asp:Label ID="loginNameLabel" runat="server" Text='<%# Eval("loginName") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="rsProposedInterventions" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [coreInfo_ID], [interventionTypes_name], [userName], [iDate], [loginName] FROM [view_detail_interventions]">
    </asp:SqlDataSource>
    </asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_list_intervention.aspx.cs" Inherits="IMS.man_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>“Proposed” interventions</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="rsProposedInterventions">
        <EmptyDataTemplate>
            <table runat="server" style="" class="table table-bordered table-hover table-striped">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                     <asp:LinkButton ID="lnk_ViewDetails" runat="server" Text='<%# Bind("interventionTypes_name") %>' PostBackUrl='<%#"~/man_edit_intervention?iid="+Eval("interventionTypes_ID")%>'></asp:LinkButton>

                </td>
                <td>
                    <asp:Label ID="clients_nameLabel" runat="server" Text='<%# Eval("clients_name") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>
                    <asp:Label ID="iDateLabel" runat="server" Text='<%# Eval("iDate") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0"  class="table table-bordered table-hover table-striped">
                            <tr runat="server" style="">
                                <th runat="server">Intervention Name</th>
                                <th runat="server">Clients Name</th>
                                <th runat="server">User Name</th>
                                <th runat="server">Date</th>
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
    <asp:SqlDataSource ID="rsProposedInterventions" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [interventionTypes_ID], [interventionTypes_name], [clients_name], [userName], [iDate] FROM [view_detail_interventions] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Proposed" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>

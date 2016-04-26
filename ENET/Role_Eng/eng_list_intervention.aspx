<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_list_intervention.aspx.cs" Inherits="IMS.eng_list_intervention" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Interventions List</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="lnk_ViewDetails" runat="server" Text='<%# Bind("interventionTypes_name") %>' PostBackUrl='<%#"eng_detail_intervention?coreid="+Eval("coreInfo_ID")%>'></asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="clients_nameLabel" runat="server" Text='<%# Eval("clients_name") %>' />
                </td>
                <td>
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                </td>
                <td>
                    <asp:Label ID="iDateLabel" runat="server" Text='<%# Eval("iDate") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-bordered table-hover table-striped">
                <tr runat="server" style="">
                    <th runat="server">Intervention</th>
                    <th runat="server">Clients Name</th>
                    <th runat="server">Status</th>
                    <th runat="server">iDate</th>
                </tr>
                <tr id="itemPlaceholder" runat="server">
                </tr>
            </table>
            <div>
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
            <table runat="server">
                <tr runat="server">
                    <td runat="server"></td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [interventionTypes_name], [clients_name], [status], [iDate], [coreInfo_ID] FROM [view_detail_interventions]"></asp:SqlDataSource>
</asp:Content>

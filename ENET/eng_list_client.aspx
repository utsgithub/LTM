<%@ Page Title="List All Clients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="eng_list_client.aspx.cs" Inherits="IMS.eng_list_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Clients List</h1>
    <a class="btn btn-primary" style="margin-bottom: 20px;" href="eng_create_client">Create Client</a><br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

        
        
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" class="table table-bordered table-striped table-hover">
                            <tr runat="server" style="">
                                <th runat="server">name</th>
                                <th runat="server">descriptive</th>
                                <th runat="server">Districts</th>
                                <th runat="server">clients_ID</th>
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
                    <asp:LinkButton ID="lnk_ViewDetails" runat="server" Text='<%# Bind("name") %>' PostBackUrl='<%#"~/eng_detail_client.aspx?cid="+Eval("clients_ID")%>'></asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="descriptiveLabel" runat="server" Text='<%# Eval("descriptive") %>' />
                </td>
                <td>
                    <asp:Label ID="DistrictsLabel" runat="server" Text='<%# Eval("Districts") %>' />
                </td>
            </tr>
        </ItemTemplate>
        
        
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMSConnectionString %>" 
        SelectCommand="SELECT [name], [descriptive], [Districts], [clients_ID] FROM [view_client_list]">
    </asp:SqlDataSource>
    &nbsp;<asp:GridView ID="ListAllClientsGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:HyperLinkField DataTextField="name" HeaderText="Name" DataNavigateUrlFields="clients_ID" DataNavigateUrlFormatString="~\eng_detail_client.aspx?ID={0}" />
            <asp:BoundField DataField="descriptive" HeaderText="Descriptive Location" />
            <asp:BoundField DataField="Districts" HeaderText="District" />
        </Columns>
    </asp:GridView>
</asp:Content>

<%@ Page Title="List All Clients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="eng_list_client.aspx.cs" Inherits="IMS.eng_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Clients List</h1>
    <a class="btn btn-primary" style="margin-bottom: 20px;" href="eng_create_client">Create Client</a><br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="clients_ID">
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">name</th>
                                <th runat="server">descriptive</th>
                                <th runat="server">Districts</th>
                                <th runat="server">clients_ID</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="descriptiveLabel" runat="server" Text='<%# Eval("descriptive") %>' />
                </td>
                <td>
                    <asp:Label ID="DistrictsLabel" runat="server" Text='<%# Eval("Districts") %>' />
                </td>
                <td>
                    <asp:Label ID="clients_IDLabel" runat="server" Text='<%# Eval("clients_ID") %>' />
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
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="descriptiveTextBox" runat="server" Text='<%# Bind("descriptive") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DistrictsTextBox" runat="server" Text='<%# Bind("Districts") %>' />
                </td>
                <td>
                    <asp:Label ID="clients_IDLabel1" runat="server" Text='<%# Eval("clients_ID") %>' />
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
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="descriptiveTextBox" runat="server" Text='<%# Bind("descriptive") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DistrictsTextBox" runat="server" Text='<%# Bind("Districts") %>' />
                </td>
                <td>
                    <asp:TextBox ID="clients_IDTextBox" runat="server" Text='<%# Bind("clients_ID") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="descriptiveLabel" runat="server" Text='<%# Eval("descriptive") %>' />
                </td>
                <td>
                    <asp:Label ID="DistrictsLabel" runat="server" Text='<%# Eval("Districts") %>' />
                </td>
                <td>
                    <asp:Label ID="clients_IDLabel" runat="server" Text='<%# Eval("clients_ID") %>' />
                </td>
            </tr>
        </ItemTemplate>
        
        
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="descriptiveLabel" runat="server" Text='<%# Eval("descriptive") %>' />
                </td>
                <td>
                    <asp:Label ID="DistrictsLabel" runat="server" Text='<%# Eval("Districts") %>' />
                </td>
                <td>
                    <asp:Label ID="clients_IDLabel" runat="server" Text='<%# Eval("clients_ID") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        
        
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT [name], [descriptive], [Districts], [clients_ID] FROM [view_client_list]">
    </asp:SqlDataSource>
    <%--<asp:GridView ID="ListAllClientsGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:HyperLinkField DataTextField="name" HeaderText="Name" DataNavigateUrlFields="clients_ID" DataNavigateUrlFormatString="~\eng_detail_client.aspx?ID={0}" />
            <asp:BoundField DataField="descriptive" HeaderText="Descriptive Location" />
            <asp:BoundField DataField="Districts" HeaderText="District" />
        </Columns>
    </asp:GridView>--%>
</asp:Content>

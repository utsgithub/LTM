<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_list_intervention.aspx.cs" Inherits="IMS.eng_list_intervention" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Interventions List</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
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
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="interventionTypes_nameTextBox" runat="server" Text='<%# Bind("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="clients_nameTextBox" runat="server" Text='<%# Bind("clients_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="iDateTextBox" runat="server" Text='<%# Bind("iDate") %>' />
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
                    <asp:TextBox ID="interventionTypes_nameTextBox" runat="server" Text='<%# Bind("interventionTypes_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="clients_nameTextBox" runat="server" Text='<%# Bind("clients_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="iDateTextBox" runat="server" Text='<%# Bind("iDate") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
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
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
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
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [interventionTypes_name], [clients_name], [status], [iDate] FROM [view_detail_interventions]"></asp:SqlDataSource>
    <%--<asp:GridView ID="table_eng_list_invervention" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover table-striped">
        <Columns>
            <asp:BoundField DataField="" HeaderText="Intervention Type" />
            <asp:BoundField DataField="" HeaderText="Client" />
            <asp:BoundField DataField="" HeaderText="Status" />
            <asp:BoundField DataField="" HeaderText="Date" />
        </Columns>
    </asp:GridView>--%>

    <table width="100%" class="table table-bordered table-hover table-striped">
        <tr>
            <th>Intervention Type</th>
            <th>client</th>
            <th>Status</th>
            <th>date </th>
        </tr>
        <tr>
            <td><a href="eng_edit_intervention">Supply and Install Portable Toilet</a></td>
            <td>Family of Josiah</td>
            <td>Proposed</td>
            <td>2015/10/12</td>
        </tr>
        <tr>
            <td><a href="eng_edit_intervention">Hepatitis Avoidance Training</a></td>
            <td>Family of Ruth</td>
            <td>Approved</td>
            <td>2015/10/11</td>
        </tr>
        <tr>
            <td><a href="eng_edit_intervention">Supply and Install Storm-proof Home Kit</a></td>
            <td>Family of Peter</td>
            <td>Completed</td>
            <td>2015/10/11</td>
        </tr>
    </table>
</asp:Content>

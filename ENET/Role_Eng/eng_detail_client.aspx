<%@ Page Title="Detailed Client View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_client.aspx.cs" Inherits="IMS.eng_detail_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Client Information</h1>
    <asp:ListView runat="server" DataSourceID="rsClientList">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>

        <ItemTemplate>
            <table class="table">
                <tr>
                    <th>name:</th>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                </tr>
                <br />
                <tr>
                    <th>descriptive:</th>
                    <td>
                        <asp:Label ID="descriptiveLabel" runat="server" Text='<%# Eval("descriptive") %>' /></td>
                </tr>
                <br />
                <tr>
                    <th>Districts:</th>
                    <td>
                        <asp:Label ID="DistrictsLabel" runat="server" Text='<%# Eval("Districts") %>' /></td>
                </tr>
            </table>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="rsClientList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [name], [descriptive], [Districts] FROM [view_client_list] WHERE ([clients_ID] = @clients_ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="clients_ID" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h1>Interventions List</h1>
    <a href="eng_create_intervention" class="btn btn-primary" style="margin: 20px 0px;">Create Intervention</a>
    <asp:GridView ID="ListAllClientInterventionsGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="interventionTypes_name" HeaderText="Intervention Type" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="iDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
        </Columns>
    </asp:GridView>
    <asp:ListView runat="server" DataSourceID="rsCliInt">
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
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='' />

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
            <table runat="server" class="">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" class="table table-bordered table-striped table-hover">
                            <tr runat="server" style="">
                                <th runat="server">interventionTypes_name</th>
                                <th runat="server">status</th>
                                <th runat="server">iDate</th>
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
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="interventionTypes_nameLabel" runat="server" Text='<%# Eval("interventionTypes_name") %>' />
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
    <asp:SqlDataSource ID="rsCliInt" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [interventionTypes_name], [status], [iDate] FROM [view_detail_interventions] WHERE ([clients_ID] = @clients_ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="clients_ID" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

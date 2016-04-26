<%@ Page Title="List All Clients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="eng_list_client.aspx.cs" Inherits="IMS.eng_list_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Clients List</h1>
    <a class="btn btn-primary" style="margin-bottom: 20px;" href="eng_create_client">Create Client</a><br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="clients_ID">
        <LayoutTemplate>
            <table runat="server" class="">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-bordered table-striped table-hover">
                            <tr runat="server" style="">
                                <th runat="server">name</th>
                                <th runat="server">descriptive</th>
                                <th runat="server">Districts</th>

                            </tr>
                            <tr runat="server" id="itemPlaceholder">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="lnk_ViewDetails" runat="server" Text='<%# Bind("name") %>' PostBackUrl='<%#"eng_detail_client?cid="+Eval("clients_ID") %>'></asp:LinkButton>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT [name], [descriptive], [Districts], [clients_ID] FROM [view_client_list] WHERE ([district_id] = @district_id)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="district_id" QueryStringField="did" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

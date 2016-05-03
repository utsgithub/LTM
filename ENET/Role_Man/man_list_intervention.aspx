<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_list_intervention.aspx.cs" Inherits="IMS.man_list_intervention" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>“Proposed” interventions</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="rsProposedInterventions" DataKeyNames="coreInfo_ID">

        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="coreInfo_IDLabel" runat="server" Text='<%# Eval("coreInfo_ID") %>' />

                </td>
                <td>
                    <asp:LinkButton ID="lnk_ViewDetails" runat="server" Text='<%# Bind("interventionTypes_name") %>' 
                        PostBackUrl='<%#"man_edit_intervention?coreid="+Eval("coreInfo_ID")%>'></asp:LinkButton>
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
            <table runat="server" class="table table-bordered table-striped table-hover">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-bordered table-striped table-hover">
                            <tr runat="server" style="">
                                <th runat="server">coreInfo_ID</th>
                                <th runat="server">interventionTypes_name</th>
                                <th runat="server">userName</th>
                                <th runat="server">iDate</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="rsProposedInterventions" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [coreInfo_ID], [interventionTypes_name], [userName], [iDate], [loginName] FROM [view_detail_interventions] where status='Proposed'"></asp:SqlDataSource>
</asp:Content>

<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="man_edit_intervention.aspx.cs" Inherits="IMS.man_edit_intervention" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-9">
            <h1>Review Information</h1>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="RsManIntRow" GridLines="None" CssClass="table table-bordered table-striped table-hover">
                <Fields>
                    <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                    <asp:BoundField DataField="interventionTypes_name" HeaderText="interventionTypes_name" SortExpression="interventionTypes_name" />
                    <asp:BoundField DataField="Districts" HeaderText="Districts" SortExpression="Districts" />
                    <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
                </Fields>
            </asp:DetailsView>
            <div>
                <asp:LinkButton runat="server" ID="btnApproved" CssClass="btn btn-success" OnClick="btnApprove_Click" Text="Approve"></asp:LinkButton>
                <asp:LinkButton runat="server" ID="btnCancelled" CssClass="btn btn-danger" OnClick="btnCancelled_Click" Text="Not Approve"></asp:LinkButton>
                <a class="btn btn-default" runat="server" href="~/man_list_intervention">Back</a>
            </div>
        </div>
        <asp:SqlDataSource ID="RsManIntRow" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [userName], [interventionTypes_name], [Districts], [comments] FROM [view_detail_interventions] WHERE ([coreInfo_ID] = @coreInfo_ID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="-1" Name="coreInfo_ID" QueryStringField="coreid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <a class="btn btn-success btn-lg">Approve</a> <a class="btn btn-danger btn-lg">Not Approve</a>
    </div>
    </div>
</asp:Content>

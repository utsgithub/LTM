<%@ Page Title="Detailed Intervention View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_intervention.aspx.cs" Inherits="IMS.eng_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">

        <div class="col-md-9">
            <h1>Intervention Information</h1>
            <asp:DetailsView runat="server" AutoGenerateRows="False" DataSourceID="rsEngViewIntRow" GridLines="None"
                CssClass="table table-bordered table-striped table-hover">
                <Fields>
                    <asp:BoundField DataField="clients_name" HeaderText="clients_name" SortExpression="clients_name" HeaderStyle-Width="150" />
                    <asp:BoundField DataField="interventionTypes_name" HeaderText="interventionTypes_name" SortExpression="interventionTypes_name" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="Districts" HeaderText="Districts" SortExpression="Districts" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="rsEngViewIntRow" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [clients_name], [interventionTypes_name], [status], [Districts] FROM [view_detail_interventions] WHERE ([coreInfo_ID] = @coreInfo_ID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="-1" Name="coreInfo_ID" QueryStringField="coreid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <h2>Quality Management Information</h2>
            <asp:FormView runat="server" DataSourceID="rsEngCoreRow" DefaultMode="Edit" CssClass="size1of1" Width="100%">
                <EditItemTemplate>
                    <table class="table table-bordered table-striped table-hover">
                        <tr>
                            <th style="width:150px">comments:</th>
                            <td>
                                <asp:TextBox CssClass="form-control" TextMode="MultiLine" Rows="3" ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>reamaining:</th>
                            <td>
                                <asp:TextBox CssClass="form-control" ID="reamainingTextBox" runat="server" Text='<%# Bind("reamaining") %>' />
                            </td>
                        </tr>

                        <tr>
                            <th>date_recent_visit:</th>
                            <td>
                                <asp:TextBox CssClass="form-control" ID="date_recent_visitTextBox" runat="server" Text='<%# Bind("date_recent_visit") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                    </table>

                </EditItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="rsEngCoreRow" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [comments], [reamaining], [date_recent_visit] FROM [coreInfo] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="-1" Name="ID" QueryStringField="coreid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

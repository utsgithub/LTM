<%@ Page Title="Detailed Intervention View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_intervention.aspx.cs" Inherits="IMS.eng_detail_intervention" %>

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
            <asp:FormView runat="server" DataKeyNames="ID" DataSourceID="rsEngCoreRow" DefaultMode="Edit">
                <EditItemTemplate>
                    <table class="table table-bordered" style="min-width: 800px;">
                        <tr class="none">
                            <th>ID:</th>
                            <td>
                                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' /></td>
                        </tr>

                        <tr>
                            <th style="width: 150px;">comments:</th>
                            <td>
                                <asp:TextBox TextMode="MultiLine" CssClass="form-control" ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' /></td>
                        </tr>

                        <tr>
                            <th>reamaining:</th>
                            <td>
                                <asp:TextBox CssClass="form-control" TextMode="Number" ID="reamainingTextBox" runat="server" Text='<%# Bind("reamaining") %>' /></td>
                        </tr>

                        <tr class="none">
                            <th>Date Recent Visit:</th>
                            <td>
                                <asp:TextBox TextMode="DateTime" CssClass="form-control" ID="date_recent_visitTextBox" runat="server" Text='<%# Bind("date_recent_visit") %>' /></td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    comments:
         <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                    <br />
                    reamaining:
         <asp:TextBox ID="reamainingTextBox" runat="server" Text='<%# Bind("reamaining") %>' />
                    <br />
                    date_recent_visit:
         <asp:TextBox ID="date_recent_visitTextBox" runat="server" Text='<%# Bind("date_recent_visit") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
         <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    comments:
         <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
                    <br />
                    reamaining:
         <asp:Label ID="reamainingLabel" runat="server" Text='<%# Bind("reamaining") %>' />
                    <br />
                    date_recent_visit:
         <asp:Label ID="date_recent_visitLabel" runat="server" Text='<%# Bind("date_recent_visit") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>

            </asp:FormView>
            <asp:SqlDataSource ID="rsEngCoreRow" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [coreInfo] WHERE [ID] = @original_ID AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL)) AND (([reamaining] = @original_reamaining) OR ([reamaining] IS NULL AND @original_reamaining IS NULL)) AND (([date_recent_visit] = @original_date_recent_visit) OR ([date_recent_visit] IS NULL AND @original_date_recent_visit IS NULL))" InsertCommand="INSERT INTO [coreInfo] ([comments], [reamaining], [date_recent_visit]) VALUES (@comments, @reamaining, @date_recent_visit)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [comments], [reamaining], [date_recent_visit] FROM [coreInfo] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [coreInfo] SET [comments] = @comments, [reamaining] = @reamaining, [date_recent_visit] = @date_recent_visit WHERE [ID] = @original_ID AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL)) AND (([reamaining] = @original_reamaining) OR ([reamaining] IS NULL AND @original_reamaining IS NULL)) AND (([date_recent_visit] = @original_date_recent_visit) OR ([date_recent_visit] IS NULL AND @original_date_recent_visit IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_comments" Type="String" />
                    <asp:Parameter Name="original_reamaining" Type="Int32" />
                    <asp:Parameter Name="original_date_recent_visit" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="comments" Type="String" />
                    <asp:Parameter Name="reamaining" Type="Int32" />
                    <asp:Parameter Name="date_recent_visit" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="-1" Name="ID" QueryStringField="coreid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="comments" Type="String" />
                    <asp:Parameter Name="reamaining" Type="Int32" />
                    <asp:Parameter Name="date_recent_visit" Type="DateTime" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_comments" Type="String" />
                    <asp:Parameter Name="original_reamaining" Type="Int32" />
                    <asp:Parameter Name="original_date_recent_visit" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:HyperLink runat="server" ID="btnBack" Text="Back" CssClass="btn btn-default"></asp:HyperLink>

        </div>
    </div>
</asp:Content>

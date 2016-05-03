<%@ Page Title="Create Intervention" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_create_intervention.aspx.cs" Inherits="IMS.eng_create_intervention" EnableViewState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Create Intervention</h1>
    <table class="table">
        <tr>
            <th>client:</th>
            <td>
                <asp:Label runat="server" ID="LabelClient"></asp:Label>
                <asp:HiddenField runat="server" ID="hfClientID" />
            </td>
        </tr>
        <tr>
            <th>Intervention Type:</th>
            <td>
                <asp:DropDownList runat="server"  CssClass="form-control" ID="ddInt" DataTextField="name" DataValueField="ID" ></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th>labour required:</th>
            <td>
                <asp:TextBox runat="server" ID="txtLabour" TextMode="Number" CssClass="form-control" ControlToValidate="txtLabour"></asp:TextBox>
                <%--<asp:CustomValidator runat="server" ID="cvNumber" OnServerValidate="cvNumber_ServerValidate" ControlToValidate="txtLabour"></asp:CustomValidator>--%>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Error" ControlToValidate="txtLabour" Type="Integer" MinimumValue="0" MaximumValue="10000000" ForeColor="Red"></asp:RangeValidator>
                <span id="helpBlock" class="help-block">the default value is given by the intervention type, but it can be overridden by the Site Engineer</span></td>
        </tr>
        <tr>
            <th>cost of materials required:</th>
            <td>
                <asp:TextBox runat="server" ID="txtCost" TextMode="Number" CssClass="form-control"></asp:TextBox>
                 <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Error" ControlToValidate="txtCost" Type="Integer" MinimumValue="0" MaximumValue="10000000" ForeColor="Red"></asp:RangeValidator>
                <span class="help-block">this default value is given by the intervention type, but it can be overridden by the Site Engineer</span></td>
        </tr>
        <tr>
            <th>date:</th>
            <td>
                <asp:TextBox runat="server" ID="txtDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                <span class="help-block">
              <%--  <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                The date that the intervention will be performed (or was performed): this should default to the current date but can be changed</span>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </span>
            </td>
        </tr>
        <tr>
            <th></th>
            <td>
                <asp:LinkButton runat="server" Text="Submit" ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click"></asp:LinkButton>
                <asp:HyperLink runat="server" Text="Back" NavigateUrl="eng_detail_client" CssClass="btn btn-default"></asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_create_intervention.aspx.cs" Inherits="IMS.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Create Intervention</h1>
    <form>
        <table class="table">
            <tr>
                <th>client:</th>
                <td>
                    <input type="text" class="form-control" disabled value="Family of Josiah and Ruth" /></td>
            </tr>
            <tr>
                <th>Intervention Type:</th>
                <td>
                    <input type="text" class="form-control" /></td>
            </tr>
            <tr>
                <th>labour required:</th>
                <td>
                    <input type="text" class="form-control" />
                    <span id="helpBlock" class="help-block">the default value is given by the intervention type, but it can be overridden by the Site Engineer</span></td>
            </tr>
            <tr>
                <th>cost of materials required:</th>
                <td>
                    <input type="text" class="form-control" />
                    <span id="helpBlock" class="help-block">this default value is given by the intervention type, but it can be overridden by the Site Engineer</span></td>
            </tr>
            <tr>
                <th>date:</th>
                <td>
                    <input type="text" class="form-control" />
                    <span id="helpBlock" class="help-block">The date that the intervention will be performed (or was performed): this should default to the current date but can be changed</span></td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <input type="button" class="btn btn-primary" value="Submit" /></td>
            </tr>
        </table>
    </form>
</asp:Content>

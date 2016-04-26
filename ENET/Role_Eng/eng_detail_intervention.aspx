<%@ Page Title="Detailed Intervention View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_detail_intervention.aspx.cs" Inherits="IMS.eng_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-9">
            <h1>Intervention Information</h1>
            <table class="table">
                <tr>
                    <th width="200">Clients Name:</th>
                    <td>Family of Josiah</td>
                </tr>
                <tr>
                    <th width="200">Intervention Type:</th>
                    <td>Supply and Install Portable Toilet</td>
                </tr>
                <tr>
                    <th width="200">Status:</th>
                    <td>Proposed</td>
                </tr>
                <tr>
                    <th width="200">District:</th>
                    <td>Urban Indonesia</td>
                </tr>
                <tr>
                    <th width="200">Additional Comments:</th>
                    <td>Bootstrap makes front-end web development faster and easier. It's made for folks of all skill levels, devices of all shapes, and projects of all sizes.</td>
                </tr>
            </table>
            <h2>Quality Management Information</h2>
            <table class="table">
                <tr>
                    <th width="200" nowrap="nowrap">note:</th>
                    <td>
                        <textarea rows="4" class="form-control">Bootstrap makes front-end web development faster and easier. It's made for folks of all skill levels, devices of all shapes, and projects of all sizes.</textarea></td>
                </tr>
                <tr>
                    <th width="200" nowrap="nowrap">comment:</th>
                    <td>
                        <textarea rows="4" class="form-control">Bootstrap makes front-end web development faster and easier. It's made for folks of all skill levels, devices of all shapes, and projects of all sizes.</textarea></td>
                </tr>
                <tr>
                    <th width="200" nowrap="nowrap">remaining life:</th>
                    <td>
                        <input class="form-control" value="50" /></td>
                </tr>
                <tr>
                    <th width="200" nowrap="nowrap">date:</th>
                    <td>
                        <input class="form-control" value="2015/12/12" /></td>
                </tr>
                <tr>
                    <th nowrap="nowrap">&nbsp;</th>
                    <td>
                        <input type="button" class="btn btn-primary" value="Change" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

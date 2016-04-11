<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_edit_intervention.aspx.cs" Inherits="IMS.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
    <div class="col-md-9">
      <h1>Review Information</h1>
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
            <th width="200">District:</th>
            <td>Urban Indonesia</td>
          </tr>
          <tr>
            <th width="200">Additional Comments:</th>
            <td>Bootstrap makes front-end web development faster and easier. It's made for folks of all skill levels, devices of all shapes, and projects of all sizes.</td>
          </tr>
        </table>
        
        
        <a class="btn btn-success btn-lg">Approve</a> <a class="btn btn-warning btn-lg">Completed</a>
    </div>
  </div>
</asp:Content>

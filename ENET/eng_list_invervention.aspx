<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eng_list_inverventionx.cs" Inherits="ENET.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h1>Interventions List</h1>
  <table width="100%" class="table table-bordered table-hover table-striped">
    <tr>
      <th>intervention type</th>
      <th>client</th>
      <th>Status</th>
      <th>date </th>
    </tr>
    <tr>
      <td><a href="eng_edit_intervention">Supply and Install Portable Toilet</a></td>
      <td>Family of Josiah</td>
      <td>Proposed</td>
      <td>2015/10/12</td>
    </tr>
    <tr>
      <td><a href="eng_edit_intervention">Hepatitis Avoidance Training</a></td>
      <td>Family of Ruth</td>
      <td>Approved</td>
      <td>2015/10/11</td>
    </tr>
    <tr>
      <td><a href="eng_edit_intervention">Supply and Install Storm-proof Home Kit</a></td>
      <td>Family of Peter</td>
      <td>Completed</td>
      <td>2015/10/11</td>
    </tr>
  </table>
</asp:Content>

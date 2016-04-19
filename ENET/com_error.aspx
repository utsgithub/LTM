<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="com_error.aspx.cs" Inherits="IMS.com_error" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #block_error {
            width: 845px;
            height: 384px;
            border: 1px solid #cccccc;
            margin: 72px auto 0;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            background: #fff url(http://www.ebpaidrev.com/systemerror/block.gif) no-repeat 0 51px;
        }

            #block_error div {
                padding: 100px 40px 0 186px;
            }

                #block_error div h2 {
                    color: #218bdc;
                    font-size: 24px;
                    display: block;
                    padding: 0 0 14px 0;
                    border-bottom: 1px solid #cccccc;
                    margin-bottom: 12px;
                    font-weight: normal;
                }
    </style>
    <div id="block_error">
        <div>
            <h2>
                Hi, <asp:Label ID="lblName"  runat="server"></asp:Label>, you are <asp:Label ID="lblType"  runat="server"></asp:Label>, 
                and you maybe do not have permission to borrow this page.
            </h2>
            <h2>Hi, you should login first.</h2>
            <h2>Error 404. &nbspOops you've have encountered an error</h2>
            <p>
                It apperrs that Either something went wrong or the page doesn't exist anymore..<br />
                This website is temporarily unable to service your request as it has exceeded it’s resource limit. Please check back shortly.
            </p>
            <p>
                If you are the owner of the account and are regularly seeing this error, please read more about it in our knowledgebase.
        If you have any questions, please contact our Technical Support department.
            </p>
            <p><a class="btn btn-primary" href="~/Default" runat="server">Index</a></p>
        </div>
    </div>
</asp:Content>

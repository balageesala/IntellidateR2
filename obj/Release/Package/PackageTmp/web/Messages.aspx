<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="IntellidateR1Web.web.Messages" %>

<%@ Register Src="~/web/uc/messagesmenu.ascx" TagPrefix="uc1" TagName="messagesmenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <asp:Literal ID="ltScripts" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="divtotalmsgbox">
        <div class="messagesplusmenu">
            <uc1:messagesmenu runat="server" ID="messagesmenu" />

            <div id="divloadingimg" class="divloadingimg" style="">
                <img src="images/loading-bar-gif.gif" />
            </div>
            <div id="divMessagesList" class="divMessageContainer">
            </div>

         

        </div>
        <div id="divMesagesBlockBox" class="divMesagesBlockBox">
            &nbsp;

        </div>
    </div>
</asp:Content>

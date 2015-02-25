<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trashmsgs.aspx.cs" Inherits="IntellidateR1Web.web.inner.trashmsgs" %>

<%@ Register Src="~/web/ko/template_trashmessage.ascx" TagPrefix="uc1" TagName="template_trashmessage" %>



<asp:literal id="ltScripts" runat="server"></asp:literal>

<div id="divTrashMsgs" data-bind="template: { name: 'template_trashmessage'}" > </div>
<uc1:template_trashmessage runat="server" ID="template_trashmessage" />

<div id="deleteConfirmBox" style="width: 600px; height: 100px; border: 0px solid;">
    <div style="font-family: Arial; font-size: 18px; margin: 10px;">Are you sure you want to delete?</div>
</div>


<script type="text/javascript">

    $(document).ready(function () {

        CheckIsUserOnline();

    });


</script>
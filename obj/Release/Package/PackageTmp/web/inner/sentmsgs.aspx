<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sentmsgs.aspx.cs" Inherits="IntellidateR1Web.web.inner.sentmsgs" %>

<%@ Register Src="~/web/ko/template_sentmessage.ascx" TagPrefix="uc1" TagName="template_sentmessage" %>
<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>



<asp:literal id="ltScripts" runat="server"></asp:literal>
<div id="divSentMsgs" data-bind="template: { name: 'template_sentmessage'}"></div>
<uc1:template_sentmessage runat="server" ID="template_sentmessage" />





<script type="text/javascript">

    $(document).ready(function () {

        CheckIsUserOnline();

    });


</script>
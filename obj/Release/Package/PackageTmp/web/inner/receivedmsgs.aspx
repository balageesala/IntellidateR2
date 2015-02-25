<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receivedmsgs.aspx.cs" Inherits="IntellidateR1Web.web.inner.receivedmsgs" %>

<%@ Register Src="~/web/ko/template_receivedmessage.ascx" TagPrefix="uc1" TagName="template_receivedmessage" %>
<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>


<asp:literal id="ltScripts" runat="server"></asp:literal>

 <div id="divRecivedMsgs" data-bind="template: { name: 'template_receivedmessage' }" > </div>
  
<uc1:template_receivedmessage runat="server" ID="template_receivedmessage" />




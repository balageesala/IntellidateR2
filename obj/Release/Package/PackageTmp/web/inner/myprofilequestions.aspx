<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myprofilequestions.aspx.cs" Inherits="IntellidateR1Web.web.inner.myprofilequestions" %>

<%@ Register Src="~/web/ko/template_philosophyquestion.ascx" TagPrefix="uc1" TagName="template_philosophyquestion" %>
<%@ Register Src="~/web/ko/template_myprofilequestions.ascx" TagPrefix="uc1" TagName="template_myprofilequestions" %>
<%@ Register Src="~/web/uc/myprofilequestionsmenu.ascx" TagPrefix="uc1" TagName="myprofilequestionsmenu" %>



<asp:literal id="ltScripts" runat="server"></asp:literal>
<div>
    <uc1:myprofilequestionsmenu runat="server" ID="myprofilequestionsmenu" />
    
    <div style="clear: both;"></div>
    <div id="divPhilosophyQuestion" data-bind="template: { name: 'template_myprofilequestions', foreach: AllQuestions }"></div>
</div>
<div style="height: 20px;">&nbsp;</div>
<uc1:template_myprofilequestions runat="server" ID="template_myprofilequestions" />

<script type="text/javascript">

    $(document).ready(function () {

        CheckIsUserOnline();

    });


</script>
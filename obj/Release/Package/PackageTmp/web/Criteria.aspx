<%@ Page Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="Criteria.aspx.cs" Inherits="IntellidateR1Web.web.Criteria" %>

<%@ Register Src="~/web/ko/template_criteriaquestion.ascx" TagPrefix="uc1" TagName="template_criteriaquestion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltScripts" runat="server"></asp:Literal>

    <style type="text/css">

        #lnkHome{
            cursor:context-menu;
        }

    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <uc1:template_criteriaquestion runat="server" ID="template_criteriaquestion" />
    <!-- Criteria div -->
    <div class="CriteriaDiv" >
        <div id="divCriteriaQuetion" class="CriteriaQuestionBox" data-bind="template: { name: 'template_criteriaquestion', foreach: AllQuestions }"></div>
    </div>
   
</asp:Content>


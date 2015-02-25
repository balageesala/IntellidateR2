<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="profilemenu.ascx.cs" Inherits="IntellidateR1Web.web.uc.profilemenu" %>
<%@ Register Src="~/web/uc/iconsmenu.ascx" TagPrefix="uc1" TagName="iconsmenu" %>

<style type="text/css">

    .widthchange1{
        margin-top: 10px;float:left;border-bottom:0px;width:100%;
    }

     .widthchange2{
         margin-top: 10px;float:left;border-bottom:0px;width:168%;
    }


</style>


<asp:Literal ID="ltScripts" runat="server"></asp:Literal>
<div class="messageMenu" id="divprofilemenu">
    <ul>
        <li id="liOtherWritten" class="linarmal">Written</li>
        <li id="liOtherPhotos" class="linarmal">Photos</li>
        <li id="liOtherCriteria" class="linarmal">Criteria</li>
        <li id="liOtherQuestions" class="linarmal">Questions</li>
    </ul>
    <div style="float: right">
        <uc1:iconsmenu runat="server" ID="iconsmenu" />
    </div>
</div>

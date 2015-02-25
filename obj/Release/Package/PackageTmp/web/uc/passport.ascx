<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="passport.ascx.cs" Inherits="IntellidateR1Web.web.uc.passport" %>

<asp:Literal ID="ltScripts" runat="server"></asp:Literal>
<div class="divpassport">
    <div class="divimg">
        <img id="imgOtherProfilePic" runat="server" class="divimg OtherProfilePic" />
    </div>
    <div class="divrow">
        <div class="divrowlabel">Overall</div>
        <div class="divgraph">
            <div class="divOverallp" id="lblOverall" runat="server"></div>
        </div>
        <div class="divoveralllblp" id="lblOverallp" runat="server"></div>
    </div>
    <div class="divrow">
        <div class="divrowlabel">Criteria</div>
        <div class="divgraph">
            <div class="divCriteriap" id="lblCriteria" runat="server"></div>
        </div>
        <div class="criterialbl" id="lblCriteriap" runat="server"></div>
    </div>
    <div class="divrow">
        <div class="divrowlabel">Questions</div>
        <div class="divgraph">
            <div class="divQuestionsp" id="lblQuestions" runat="server"></div>
        </div>
        <div class="divquestionlbl" id="lblQuestionsp" runat="server"></div>
    </div>
    <div class="divuname" id="divUserName" runat="server"></div>
</div>
<%@ Page Language="C#" EnableViewState="false" AutoEventWireup="true" CodeBehind="myprofilequestionscmw.aspx.cs" Inherits="IntellidateR1Web.web.inner.myprofilequestionscmw" %>

<%@ Register Src="~/web/ko/template_philosophycheck.ascx" TagPrefix="uc1" TagName="template_philosophycheck" %>
<%@ Register Src="~/web/uc/myprofilequestionsmenu.ascx" TagPrefix="uc1" TagName="myprofilequestionsmenu" %>
<asp:literal id="ltScripts" runat="server"></asp:literal>
<div>
    <uc1:myprofilequestionsmenu runat="server" ID="myprofilequestionsmenu" />
    <div id="divQtnsCount" style="float:right;margin-top: -14px;margin-left: 10px;"></div>
    <div style="clear: both;"></div>
    <div style="min-height: 100px; width: 1280px; border: 0px solid;">
        <div style="background-color: #C1282D; width: 1280px; height: 30px; color: #fff;font-size: 0.8em;">
            <div style="padding: 4px;">
                
                <div style="float: left; width: 40px;padding-left:4px;">Rating</div>
                <div style="float: left; width: 280px;padding-right: 8px;">Question</div>
                <div style="float: left; width: 150px;padding-right: 4px;">Answer</div>
                <div style="float: left; width: 300px;padding-right: 4px;">Acceptable Answer(s)</div>
                <div style="float: left; width: 298px;padding-right: 4px;">Uncceptable Answer(s)</div>
                <div style="float: left; width: 40px;text-align:center;"><img id="imgCalenderTitle" runat="server" src="../images/calender_title.png" /></div>
                <div style="float: left; width: 40px;text-align:center;"><img id="imgCommentTitle" runat="server" src="../images/comment_title.png" /></div>
                <div style="float: left; width: 40px;text-align:center;"><img id="imgPrivacyTitle" runat="server" src="../images/privacy_title.png" /></div>
                <div style="float: left; width: 40px;text-align:center;"><img id="imgSexTitle" runat="server" src="../images/sex_title.png" /></div>
                <div style="float: left; width: 20px;text-align:center;"><img style="width: 20px;height:20px;" id="imgDeleteTitle" runat="server" src="../images/close_white.png" /></div>
            </div>

        </div>
        <div id="divPhilosophyCheck" data-bind="template: { name: 'template_philosophycheck', foreach: AllAnswers }" style=" width: 1280px;"></div>
    </div>

    <div style="float:left;height:20px;width:100%;">&nbsp;</div>
    <div style="float:left;min-height: 100px; width: 1280px; border: 0px solid;">
        <div style="background-color: #C1282D; width: 1280px; height: 30px; color: #fff;font-size: 0.8em;">
            <div style="padding: 4px;">
                
                <div style="float: left; width: 40px;padding-left:4px;">Rating</div>
                <div style="float: left; width: 280px;padding-right: 8px;">Question</div>
                <div style="float: left; width: 150px;padding-right: 4px;">Answer</div>
                <div style="float: left; width: 300px;padding-right: 4px;">Acceptable Answer(s)</div>
                <div style="float: left; width: 298px;padding-right: 4px;">Uncceptable Answer(s)</div>
                <div style="float: left; width: 40px;text-align:center;"><img  src="images/calender_title.png" /></div>
                <div style="float: left; width: 40px;text-align:center;"><img  src="images/comment_title.png" /></div>
                <div style="float: left; width: 40px;text-align:center;"><img  src="images/privacy_title.png" /></div>
                <div style="float: left; width: 40px;text-align:center;"><img  src="images/sex_title.png" /></div>
                <div style="float: left; width: 20px;text-align:center;"><img style="width: 20px;height:20px;" id="img5" runat="server" src="../images/close_white.png" /></div>
            </div>

        </div>
        <div id="divQuestionsDeleted" data-bind="template: { name: 'template_philosophycheck', foreach: AllAnswers }" style=" width: 1280px; height: 300px;overflow-y:auto;"></div>
    </div>






</div>
<script type="text/javascript">
    $(document).ready(function () {
        var _api = _SitePath + "api/GetAllQuestionAnswers";
        $.getDATA(_api, function (_data) {            
            ko.applyBindings(new QuestionAnswerListVM(_data), document.getElementById("divPhilosophyCheck"));
            $("#divQtnsCount").html("Total answred questions : " + _data.length);
        }, function () { });



        var _api = _SitePath + "api/GetDeletedQuestions";
        $.getDATA(_api, function (_data) {
            ko.applyBindings(new QuestionAnswerListVM(_data), document.getElementById("divQuestionsDeleted"));
        }, function () { });

    });
</script>
<uc1:template_philosophycheck runat="server" ID="template_philosophycheck" />

<script type="text/javascript">

    $(document).ready(function () {

        CheckIsUserOnline();

    });


</script>
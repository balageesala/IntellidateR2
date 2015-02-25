<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="myprofilequestionsmenu.ascx.cs" Inherits="IntellidateR1Web.web.uc.myprofilequestionsmenu" %>
<div style="height: 40px; width: 100%;">
    <div style="float: left; margin: 2px; font-size: 14px; width: 6px; text-align: center;"></div>
    <div style="float: left; margin: 4px; font-size: 14px; cursor: pointer;" id="lnkCheckMyWork">check your work</div>
    <div style="float: left; margin: 2px; font-size: 14px; width: 20px; text-align: center;">|</div>
    <div style="float: left; margin: 4px; font-size: 14px; cursor: pointer;" id="lnkAnswerQuestions">answer questions</div>
    <div style="float: left; margin: 2px; font-size: 14px; width: 20px; text-align: center;">|</div>
    <div style="float: left; margin: 4px; font-size: 14px; cursor: pointer;" id="lnkAnswerSexQuestions">answer sex questions</div>
    <div style="float: left; margin: 2px; font-size: 14px; width: 20px; text-align: center;">|</div>
    <div style="float: left; margin: 4px; font-size: 14px; cursor: pointer;" id="lnkRankOrder">rank order</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $("#lnkAnswerQuestions").click(function () {
            SetNormalQuestions();
        });

        $("#lnkAnswerSexQuestions").click(function () {
            SetSexQuestions();
        });

        $("#lnkCheckMyWork").click(function () {
            SetQuestions();
        });


        $("#lnkRankOrder").click(function () {
            SetQuestionsRankOrder();
        });

    });
</script>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="profilequestionsmenu.ascx.cs" Inherits="IntellidateR1Web.web.uc.profilequestionsmenu" %>

<div style="height: 40px; width: 100%;">
    <div style="float: left; margin: 2px; font-size: 14px; width: 6px; text-align: center;"></div>
    <div style="float: left; margin: 4px; font-size: 14px; cursor: pointer;" id="lnkGenaralQuestions">Genaral</div>
    <div style="float: left; margin: 2px; font-size: 14px; width: 20px; text-align: center;" id="divSextab">|</div>
    <div style="float: left; margin: 4px; font-size: 14px; cursor: pointer;" id="lnkSexQuestions">Sex</div>
</div>


<script type="text/javascript">
    $(document).ready(function () {

       // $("#lnkGenaralQuestions").css("color", "red");
        

        var _ApiHideSexLink = _SitePath + "api/ThisUserHasSexQuestions";
        var _SexLinkObject = new Object();
        _SexLinkObject.OtherUserID = _OtherUserID;
        $.postDATA(_ApiHideSexLink, _SexLinkObject, function (_return) {
            if (_return) {
                $("#lnkSexQuestions").show();
            } else {
                $("#lnkSexQuestions").hide();
                $("#divSextab").hide();
            }
        });

        $("#lnkGenaralQuestions").click(function () {
            LoadGenaralQuestions();
        });

        $("#lnkSexQuestions").click(function () {
            LoadSexQuestions();
           
        });

    });
</script>
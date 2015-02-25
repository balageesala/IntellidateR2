
$(document).ready(function () {

    $(".divprofilepic").empty();
    $(".divprofilepic").html("&nbsp;");
    SetDefaultMenuItem();

    $("#liWritten").click(function () {
        CheckIsUserOnline();
        SetWritten();
    });

    $("#liPhotos").click(function () {
        CheckIsUserOnline();
        SetPhotos();
    });

    $("#liCriteria").click(function () {
        CheckIsUserOnline();
        SetCriteria();
    });

    $("#liQuestions").click(function () {
        CheckIsUserOnline();
        SetQuestions();
    });

});


function CrearAllActiveClasses() {

    $("#liWritten").removeClass("liactive");
    $("#liPhotos").removeClass("liactive");
    $("#liCriteria").removeClass("liactive");
    $("#liQuestions").removeClass("liactive");

}


function SetDefaultMenuItem() {

    CheckIsUserOnline();
    var _pathurl = window.location.href;

    if (_pathurl.indexOf('#') != "-1") {
        var _tabSection = _pathurl.split('#')[1];
        if (_tabSection == "aboutme") {
            SetWritten();
        }
        if (_tabSection == "photos") {
            SetPhotos();
        }
        if (_tabSection == "criteria") {
            SetCriteria();
        }
        if (_tabSection == "questions") {
            SetQuestions();
        }
    } else {
        SetWritten();
    }
}


function SetWritten() {

    $(".divBlockBox").show();
    $(".divBlockBox").empty();
    $(".divBlockBox").html("&nbsp;");
    CrearAllActiveClasses();
    _UrlPath = _SitePath + "web/inner/myprofilewritten";
    $("#divMyProfileContainer").empty();
    $("#divMyProfileContainer").load(_UrlPath, function () {
        $("#liWritten").addClass("liactive");
        window.location.hash = "aboutme";

    });
}

function SetPhotos() {
    CrearAllActiveClasses();
    $(".divBlockBox").show();
    var _UrlPath = _SitePath + "web/inner/photoupload";
    $("#divMyProfileContainer").empty();
    $(".divBlockBox").load(_UrlPath, function () {
        $("#liPhotos").addClass("liactive");
        var _UrlContainerPath = _SitePath + "web/inner/myprofilephotos";
        $(".divMyProfileContainer").load(_UrlContainerPath, function () {
            window.location.hash = "photos";
        });
    });
}

function SetCriteria() {
    CrearAllActiveClasses();
    var _UrlPath = _SitePath + "web/inner/myprofile_criteria";
    $(".divBlockBox").hide();
    $("#divMyProfileContainer").empty();
    $("#divMyProfileContainer").load(_UrlPath, function () {
        $("#liCriteria").addClass("liactive");
        window.location.hash = "criteria";
    });
}


function SetQuestions() {
    CrearAllActiveClasses();
    var _UrlPath = _SitePath + "web/inner/myprofilequestionscmw";
    $(".divBlockBox").hide();
    $("#divMyProfileContainer").empty();
    $("#divMyProfileContainer").load(_UrlPath, function () {
        $("#liQuestions").addClass("liactive");
        window.location.hash = "questions";
        $("#lnkCheckMyWork").css("color", "red");
    });
}


function SetSexQuestions() {
    CrearAllActiveClasses();
    var _UrlPath = _SitePath + "web/inner/myprofilesexquestions";
    $(".divBlockBox").show();
    $(".divBlockBox").html("&nbsp;");
    $("#divMyProfileContainer").empty();
    $("#divMyProfileContainer").load(_UrlPath, function () {
        $("#liQuestions").addClass("liactive");
        window.location.hash = "questionssex";
        $("#lnkAnswerSexQuestions").css("color", "red");
    });
}

function SetNormalQuestions() {
    CrearAllActiveClasses();
    var _UrlPath = _SitePath + "web/inner/myprofilequestions";
    $(".divBlockBox").show();
    $(".divBlockBox").html("&nbsp;");
    $("#divMyProfileContainer").empty();
    $("#divMyProfileContainer").load(_UrlPath, function () {
        $("#liQuestions").addClass("liactive");
        window.location.hash = "questionsnormal";
        $("#lnkAnswerQuestions").css("color", "red");
    });
}


function SetQuestionsRankOrder() {
    CrearAllActiveClasses();
    var _UrlPath = _SitePath + "web/inner/myprofilerankorder";
    $(".divBlockBox").show();
    $(".divBlockBox").html("&nbsp;");
    $("#divMyProfileContainer").empty();
    $("#divMyProfileContainer").load(_UrlPath, function () {
        $("#liQuestions").addClass("liactive");
        window.location.hash = "rankorder";
        $("#lnkRankOrder").css("color", "red");
    });
}
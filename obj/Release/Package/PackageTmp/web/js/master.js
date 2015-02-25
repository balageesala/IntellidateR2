



$(document).ready(function () {
   
    var isSafari = !!navigator.userAgent.match(/Version\/[\d\.]+.*Safari/)
    if (isSafari) {
        fixSafary();
        $(document).on('webkitfullscreenchange mozfullscreenchange fullscreenchange MSFullscreenChange', fixSafary);
    }
});

function fixSafary() {
    fixMobileSafariViewport(".container");
    fixMobileSafariViewport(".containerBox");
}

function fixMobileSafariViewport(_className) {
    $element = $(_className);
    $element.css('height', "1000px;");
}


function CheckIsUserOnline() {

    var SESSION_API = _SitePath + "api/SessionCheck";
    $.getDATA(SESSION_API, function (_IsOnline) {
        if (!_IsOnline) {
            window.location.href = _SitePath + "web/LogOut";
        } else {
            return true;
        }
    }, function () { });


}



$(document).ready(function () {

    setInterval(function () {
        var _pageName = window.location.pathname;
        if (_pageName.indexOf("ConversationView") == -1) {
            CheckIsUserOnline();
        }  
   }, 8000);

});



$(document).ready(function () {

    var _NewUser = $("#hdnNewUser").val();
    var now = new Date();
    var millisTill12 = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 11, 59, 59, 0) - now;
    if (millisTill12 < 0) {
        millisTill12 += 86400000; // it's after 12pm
    }

    //update criteria user answers asynic
    var _ApiAsyncCriteria = _SitePath + "api/AsyncCriteriaAnswers";
    $.postDATA(_ApiAsyncCriteria, null, function (_return) {
    });



    //set time for today 12 pm
    //this will fires while user registered day before 12 pm and he stays in site after 12 pm 
    //setTimeout(function () {
    //    if (_NewUser == "1") {
    //        var API_GETMATCH = _SitePath + "API/GetNewUserTodayMatch";
    //        $.getDATA(API_GETMATCH, function (data) {
    //            if (data) {
    //                if (confirm("Your new match is genarated do you want to check?")) {
    //                    window.location.href = _SitePath + "web/Home";
    //                }
    //            }
    //        }, function (err) {
    //            // alert(JSON.stringify(err));
    //        });
    //    }
    //}, millisTill12);

});


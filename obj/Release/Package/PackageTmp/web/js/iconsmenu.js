﻿

var ISUSERBLOCKED = false;

$(document).ready(function () {

   
    IsUserBlocked();
   

    var _GetUSERAPI = _SitePath + "api/GetUserDetails";
    $.getDATA(_GetUSERAPI, function (_data) {
       // alert(JSON.stringify(_data));
        if (_data.Gender == 2) {
            $("#imgInterested").show();
        } else {
            $("#imgInterested").hide();
        }
    }, function () { });



    $("#imgCompose").click(function () {
       
        if (ISUSERBLOCKED) {
            var _composeurl = _SitePath + "web/inner/compose.aspx?recid=" + _OtherUserID;
            SetUrlIntelliWindow(_composeurl, "620", "410");
        }
        else {
            alert("this user blocked.");
        }
    });

    $("#imgEmail").click(function () {
       
        if (ISUSERBLOCKED) {
        var _emailurl = _SitePath + "web/inner/emailprofile";
        SetUrlIntelliWindow(_emailurl, "300", "300");
        }
        else {
            alert("this user blocked.");
        }
    });

    $("#imgBlock").click(function () {
        if (ISUSERBLOCKED) {
            if (confirm("are you want to block this user?")) {
                var _BlockAPI = _SitePath + "api/BlockUserProfile";
                var _BlockObj = new Object();
                _BlockObj.BlockedUserID = _OtherUserID;
                $.postDATA(_BlockAPI, _BlockObj, function (_retObject) {
                    ISUSERBLOCKED = false;
                    alert("This user blocked sucessfully.");
                });
            }
        } else {
            alert("You have already blocked this user.");
        }
    });


    $("#imgReport").click(function () {
       
        var _Reporturl = _SitePath + "web/inner/reportprofile";
        SetUrlIntelliWindow(_Reporturl, "520", "260");
       
    });


    $("#imgChat").click(function () {
       
        if (ISUSERBLOCKED) {
             //  alert("clicked");
            //   do chat here
           //    alert(_OtherUserID);
            AddNewChatWindow(_OtherUserID);
            
        } else {
            alert("this user blocked.");
        }
    });


    $("#imgCompatibilityReport").click(function () {

        var _Reporturl = _SitePath + "web/inner/compatibilityreportcart?RematchID=" + _OtherUserID;
        SetUrlIntelliWindow(_Reporturl, "620", "410")

    });




})

function IsUserBlocked() {
    var _APIISBLOCKED = _SitePath + "api/HasUserBlocked";
    var _BlockedObj = new Object();
    _BlockedObj.BlockedUserID = _OtherUserID;
    $.postDATA(_APIISBLOCKED, _BlockedObj, function (_BlakObject) {
        ISUSERBLOCKED = _BlakObject;
    });

}


$(document).ready(function () {

    //chat icon should be display while user comes into online
    //$("#imgChat").hide();
    //setInterval(function () {
    //    var API_ISONLINE = _SitePath + "api/IsOtherUserOnline";
    //    var OnlineObject = new Object();
    //    OnlineObject.OtherUserID = _OtherUserID;
    //    $.postDATA(API_ISONLINE, OnlineObject, function (_return) {
    //        if (_return) {
    //            $("#imgChat").show();
    //        } else {
    //            $("#imgChat").hide();
    //        }
    //    });
    //}, 5000);

});


//var _showTabs;

//$(document).ready(function () {

//    getShowTabs();
//    HideLoadingImage();


//    var API_ResetMatchp = _SitePath + "api/ResetMatchPercentages";
//    var _MatchpObject = new Object();
//    _MatchpObject.OtherUserID = _OtherUserID;
//    $.postDATA(API_ResetMatchp, _MatchpObject, function (_ret) {
//    });


//    $("#liOtherWritten").click(function (event) {
//        event.preventDefault();
//        ShowLoadingImage();
//        SetWritten();
//    });

//    $("#liOtherPhotos").click(function (event) {
//        event.preventDefault();
//        ShowLoadingImage();
//        SetPhotos();
//    });

//    $("#liOtherCriteria").click(function (event) {
//        event.preventDefault();
//        ShowLoadingImage();
//        SetCriteria();

//    });

//    $("#liOtherQuestions").click(function (event) {
//        event.preventDefault();
//        ShowLoadingImage();
//        SetQuestions();
//    });

//});



//function ShowLoadingImage() {
//    $("#divLoadingImg").show();
//    $("#divOtherProfileContainer").hide();
//}

//function HideLoadingImage() {
//    $("#divLoadingImg").hide();
//    $("#divOtherProfileContainer").show();
//}

//function SetWritten() {
    
//    $("#divprofilemenu").removeClass("widthchange2");
//    $("#divprofilemenu").addClass("widthchange1");
//    $("#topmenustrip_imgUserIcon").show();
//    CrearAllActiveClasses();
//    $("#divPassPort").show();
//    $(".divBlockBox").show();
//    $(".divBlockBox").empty();
//    $(".divBlockBox").html("&nbsp;");
//    $("#divOtherProfileContainer").empty();
//    $("#divLoadProfileMatchp").hide();
//    $("#divOtherProfileContainer").load(_SitePath + "web/inner/profilewritten", function () {
//        $("#liOtherWritten").addClass("liactive");
//        window.location.hash = "aboutme";
//        HideLoadingImage();
//    });

//}


//function SetPhotos() {
   
//    $("#divprofilemenu").addClass("widthchange2");
//    $("#divprofilemenu").removeClass("widthchange1");
//    $("#topmenustrip_imgUserIcon").show();
//    CrearAllActiveClasses();
//    var _Path = _SitePath + "web/inner/profilephotos";
//    $("#divPassPort").show();
//    $(".divBlockBox").hide();
//    $("#divLoadProfileMatchp").hide();
//    $("#divOtherProfileContainer").load(_Path, function () {
//        $("#liOtherPhotos").addClass("liactive");
//        window.location.hash = "photos";
//        HideLoadingImage();
//    });
//}


//function SetCriteria() {
    
//    $("#divprofilemenu").addClass("widthchange2");
//    $("#divprofilemenu").removeClass("widthchange1");
//    $("#topmenustrip_imgUserIcon").hide();
//    CrearAllActiveClasses();
//    var _Path = _SitePath + "web/inner/profilecriteria?OtherUserID=" + _OtherUserID + "&OtherUserGender=" + _OtherUserGender;
//    $(".divBlockBox").hide();
//    $("#divPassPort").hide();

//    $("#divLoadProfileMatchp").show();
//    var _CmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=c";
//    $("#divLoadProfileMatchp").load(_CmatchpPath, function () {

//    });

//    $("#divOtherProfileContainer").load(_Path, function () {
//        $("#liOtherCriteria").addClass("liactive");
//        window.location.hash = "criteria";
//        HideLoadingImage();
//    });

  
//}


//function SetQuestions() {
 
//    $("#divprofilemenu").addClass("widthchange2");
//    $("#divprofilemenu").removeClass("widthchange1");
//    $("#topmenustrip_imgUserIcon").hide();
//    CrearAllActiveClasses();
//    var _Path = _SitePath + "web/inner/profilequestions?u=" + _OtherUserID
//    ;
//    $(".divBlockBox").hide();
//    $("#divPassPort").hide();
//    $("#divOtherProfileContainer").load(_Path, function () {
//        $("#liOtherQuestions").addClass("liactive");
//        window.location.hash = "questions";
//        HideLoadingImage();
//    });

//    $("#divLoadProfileMatchp").show();
//    var _QmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=q";
//    $("#divLoadProfileMatchp").load(_QmatchpPath, function () {
       
//    });


//}

//var _TabValue="";

//function getShowTabs() {
    
//    $("#liOtherWritten").hide();
//    $("#liOtherPhotos").hide();
//    $("#liOtherCriteria").hide();
//    $("#liOtherQuestions").hide();


//    var API_OTHERUSER_PROFILE = _SitePath + "api/GetTabNames";
//    var _Object = new Object();
//    _Object.OtherUserID = _OtherUserID;
//    $.postDATA(API_OTHERUSER_PROFILE, _Object, function (_ret) {
//        for (var i = 0; i < _ret.length; i++) {
//            if (_ret[i] == "aboutme") {
//                $("#liOtherWritten").show();
//                if (_TabValue == "") {
//                    _TabValue = "aboutme";
//                }
//            }
//            if (_ret[i] == "photos") {
//                $("#liOtherPhotos").show();
//                if (_TabValue == "") {
//                    _TabValue = "photos";
//                }
//            }
//            if (_ret[i] == "criteria") {
//                $("#liOtherCriteria").show();
//                if (_TabValue == "") {
//                    _TabValue = "criteria";
//                }
//            }
//            if (_ret[i] == "questions") {
//                $("#liOtherQuestions").show();
//                if (_TabValue == "") {
//                    _TabValue = "questions";
//                }
//            }
//        }
//        ShowDefaultMenuItem();
//    });


 

//}



//function ShowDefaultMenuItem() {

//    CrearAllActiveClasses();
//    var _pathurl = window.location.href;

//    if (_pathurl.indexOf('#') != "-1") {
//        var _tabSection = _pathurl.split('#')[1];
//        if (_tabSection == "aboutme") {
//            SetWritten();
//        }
//        if (_tabSection == "photos") {
//            SetPhotos();
//        }
//        if (_tabSection == "criteria") {
//            SetCriteria();
//        }
//        if (_tabSection == "questions") {
//            SetQuestions();
//        }
//    } else {
//        if (_TabValue != "") {
//            if (_TabValue == "aboutme") {
//                SetWritten();
//            }
//            if (_TabValue == "photos") {
//                SetPhotos();
//            }
//            if (_TabValue == "criteria") {
//                SetCriteria();
//            }
//            if (_TabValue == "questions") {
//                SetQuestions();
//            }
//        } else {
//            SetWritten();
//        }
//    }

//}



function ShowThisQuestions(_sUrl) {

    $("#divOtherProfileQuestions").load(_sUrl, function () {
      
    });
}



$(document).ready(function () {



    var _pathurl = window.location.href;

    if (_pathurl.indexOf('#') != "-1") {
        var _tabSection = _pathurl.split('#')[1];
        if (_tabSection == "criteria") {
            $("#divOtherProfileCriteria").load(_criteriaPath, function () {
                //divLoadCriteriaMatchp
                var _CmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=c";
                $("#divLoadCriteriaMatchp").load(_CmatchpPath, function () {
                });
            });
        }
        if (_tabSection == "questions") {
            $("#divOtherProfileQuestions").load(_questionsPath, function () {
                var _QmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=q";
                $("#divLoadProfileMatchp").load(_QmatchpPath, function () {
                });

            });
        }
    }



    //hide all divs here
    $("#divOtherProfileContainer").hide();
    $("#divOtherProfilePhotos").hide();
    $("#divOtherProfileCriteria").hide();
    $("#divOtherProfileQuestions").hide();
    $("#divLoadCriteriaMatchp").hide();
    //load all tabs here
    var _writtenPath = _SitePath + "web/inner/profilewritten";
    var _photosPath = _SitePath + "web/inner/profilephotos";
    var _criteriaPath = _SitePath + "web/inner/profilecriteria?OtherUserID=" + _OtherUserID + "&OtherUserGender=" + _OtherUserGender;
    var _questionsPath = _SitePath + "web/inner/profilequestions?u=" + _OtherUserID;


    $("#divOtherProfileContainer").load(_writtenPath, function () {
    });
    $("#divOtherProfilePhotos").load(_photosPath, function () {
    });

   

    $("#divOtherProfileCriteria").load(_criteriaPath, function () {
        //divLoadCriteriaMatchp
        var _CmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=c";
        $("#divLoadCriteriaMatchp").load(_CmatchpPath, function () {
        });
    });

    $("#divOtherProfileQuestions").load(_questionsPath, function () {
        var _QmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=q";
        $("#divLoadProfileMatchp").load(_QmatchpPath, function () {
        });
    });


      var API_ResetMatchp = _SitePath + "api/ResetMatchPercentages";
      var _MatchpObject = new Object();
      _MatchpObject.OtherUserID = _OtherUserID;
      $.postDATA(API_ResetMatchp, _MatchpObject, function (_ret) {
      });



    $("#liOtherWritten").click(function (event) {

        showAboutUs();

     });

     $("#liOtherPhotos").click(function (event) {

         showPhotos();
        
        
     });

     $("#liOtherCriteria").click(function (event) {

         showCriteria();
        
      });

     $("#liOtherQuestions").click(function (event) {
        
         showQuestions();

      });

});


//external functions

function CrearAllActiveClasses() {

    $("#liOtherWritten").removeClass("liactive");
    $("#liOtherPhotos").removeClass("liactive");
    $("#liOtherCriteria").removeClass("liactive");
    $("#liOtherQuestions").removeClass("liactive");

}


function showAboutUs() {

    $("#divOtherProfileContainer").show();
    $("#divOtherProfilePhotos").hide();
    $("#divOtherProfileCriteria").hide();
    $("#divOtherProfileQuestions").hide();
    CrearAllActiveClasses();
    $("#liOtherWritten").addClass("liactive");
    $("#divPassPort").show();
    $(".divBlockBox").show();
    $(".divBlockBox").html("&nbsp;");
    $("#divLoadProfileMatchp").hide();
    $("#divLoadCriteriaMatchp").hide();
    $("#divLoadProfileMatchp").hide();
    window.location.hash = "aboutme";
    $("#divprofilemenu").addClass("widthchange1");
    $("#divprofilemenu").removeClass("widthchange2");
}

function showPhotos() {

    $("#divOtherProfileContainer").hide();
    $("#divOtherProfilePhotos").show();
    $("#divOtherProfileCriteria").hide();
    $("#divOtherProfileQuestions").hide();
    CrearAllActiveClasses();
    $("#liOtherPhotos").addClass("liactive");

    $("#divprofilemenu").addClass("widthchange2");
    $("#divprofilemenu").removeClass("widthchange1");
    $("#topmenustrip_imgUserIcon").show();
    $("#divPassPort").show();
    $(".divBlockBox").hide();
    $("#divLoadProfileMatchp").hide();
    $("#divLoadCriteriaMatchp").hide();
    $("#divLoadProfileMatchp").hide();
    window.location.hash = "photos";

}

function showCriteria() {

    $("#divOtherProfileContainer").hide();
    $("#divOtherProfilePhotos").hide();
    $("#divOtherProfileCriteria").show();
    $("#divOtherProfileQuestions").hide();
    CrearAllActiveClasses();
    $("#divprofilemenu").addClass("widthchange2");
    $("#divprofilemenu").removeClass("widthchange1");
    $("#topmenustrip_imgUserIcon").hide();
    $(".divBlockBox").hide();
    $("#divPassPort").hide();
    $("#liOtherCriteria").addClass("liactive");
    $("#divLoadCriteriaMatchp").show();
    $("#divLoadProfileMatchp").hide();
    window.location.hash = "criteria";
}

function showQuestions() {

    $("#divOtherProfileContainer").hide();
    $("#divOtherProfilePhotos").hide();
    $("#divOtherProfileCriteria").hide();
    $("#divOtherProfileQuestions").show();
    CrearAllActiveClasses();
    $("#divprofilemenu").addClass("widthchange2");
    $("#divprofilemenu").removeClass("widthchange1");
    $("#topmenustrip_imgUserIcon").hide();
    $(".divBlockBox").hide();
    $("#divPassPort").hide();
    $("#liOtherQuestions").addClass("liactive");
    $("#divLoadCriteriaMatchp").hide();
    $("#divLoadProfileMatchp").show();
    window.location.hash = "questions";

}






$(document).ready(function () {

    ShowAvilableTabsOnly();
    var _pathurl = window.location.href;

        if (_pathurl.indexOf('#') != "-1") {
            var _tabSection = _pathurl.split('#')[1];
            if (_tabSection == "aboutme") {
                showAboutUs();
            }
            if (_tabSection == "photos") {
                showPhotos();
            }
            if (_tabSection == "criteria") {
                showCriteria();
            }
            if (_tabSection == "questions") {
               showQuestions();
            }
        } else {
            showAboutUs();
        }
});






function ShowAvilableTabsOnly() {
    
        $("#liOtherWritten").hide();
        $("#liOtherPhotos").hide();
        $("#liOtherCriteria").hide();
        $("#liOtherQuestions").hide();
        var API_OTHERUSER_PROFILE = _SitePath + "api/GetTabNames";
        var _Object = new Object();
        _Object.OtherUserID = _OtherUserID;
        $.postDATA(API_OTHERUSER_PROFILE, _Object, function (_ret) {
            for (var i = 0; i < _ret.length; i++) {
                if (_ret[i] == "aboutme") {
                    $("#liOtherWritten").show();
                }
                if (_ret[i] == "photos") {
                    $("#liOtherPhotos").show();
                }
                if (_ret[i] == "criteria") {
                    $("#liOtherCriteria").show();
                }
                if (_ret[i] == "questions") {
                    $("#liOtherQuestions").show();
                }
            }
           
        });
    }

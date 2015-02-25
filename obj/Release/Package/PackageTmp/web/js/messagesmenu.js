
$(document).ready(function() {
  
    CheckIsUserOnline();
    LoadDefaultTab();
 

    $("#liReceived").click(function () {
        $(".divloadingimg").show();
        ClearActive();
        CheckIsUserOnline();
        LoadRecivedMessages();
        window.location.hash = "recived";
    });

    $("#liFiltered").click(function () {
        $(".divloadingimg").show();
        ClearActive();
        CheckIsUserOnline();
        LoadFilteredInbox();
        window.location.hash = "filtered";
    });

    $("#liSentBox").click(function () {
        $(".divloadingimg").show();
        ClearActive();
        CheckIsUserOnline();
        LoadSentMessages();
        window.location.hash = "sent";
    });

    $("#liInstantMessage").click(function () {
        $(".divloadingimg").show();
        ClearActive();
        CheckIsUserOnline();
        LoadChats();
        window.location.hash = "chat";
    });

    $("#liTrash").click(function () {
        $(".divloadingimg").show();
        ClearActive();
        CheckIsUserOnline();
        LoadTrash();
        window.location.hash = "trash";
    });


});

function ClearActive() {
    $("#liReceived").removeClass("liactive");
    $("#liFiltered").removeClass("liactive");
    $("#liSentBox").removeClass("liactive");
    $("#liInstantMessage").removeClass("liactive");
    $("#liTrash").removeClass("liactive");
}

function LoadDefaultTab() {

    CheckIsUserOnline();
    ClearActive();
    var _pathurl = window.location.href;

    if (_pathurl.indexOf('#') != "-1") {
        var _tabSection = _pathurl.split('#')[1];
        if (_tabSection == "recived") {
            LoadRecivedMessages();
        }
        if (_tabSection == "filtered") {
            LoadFilteredInbox();
           
        }
        if (_tabSection == "sent") {
            LoadSentMessages();        
        }
        if (_tabSection == "chat") {
            LoadChats();
          
        }
        if (_tabSection == "trash") {
            LoadTrash();
          
        
            
        }
    } else {
        LoadRecivedMessages();
    }
}


    function LoadRecivedMessages() {
        var _UrlPath = _SitePath + "web/inner/receivedmsgs";
        $("#divMessagesList").empty();
        $("#divMessagesList").load(_UrlPath, function () {
            $("#liReceived").addClass("liactive");
        });
    }

    function LoadFilteredInbox() {

        var _UrlPath = _SitePath + "web/inner/filteredinbox";
        $("#divMessagesList").empty();
        $("#divMessagesList").load(_UrlPath, function () {
            $("#liFiltered").addClass("liactive");

        });
    }

    function LoadSentMessages() {

        var _UrlPath = _SitePath + "web/inner/sentmsgs";
        $("#divMessagesList").empty();
        $("#divMessagesList").load(_UrlPath, function () {
            $("#liSentBox").addClass("liactive");
        });
    }

    function LoadChats() {

        var _UrlPath = _SitePath + "web/inner/chatmsgs";
        $("#divMessagesList").empty();
        $("#divMessagesList").load(_UrlPath, function () {
            $("#liInstantMessage").addClass("liactive");
        });
    }

    function LoadTrash() {
        var _UrlPath = _SitePath + "web/inner/trashmsgs";
        $("#divMessagesList").load(_UrlPath, function () {
            $("#liTrash").addClass("liactive");
        });
    }

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="matchprofilemenu.ascx.cs" Inherits="IntelliWebR1.web.uc.matchprofilemenu" %>


<div class="messageMenu" id="divprofilemenu" style="width:100%;border-bottom:0px;">
    <ul>
        <li id="liMatchWritten" class="linarmal">Written</li>
        <li id="liMatchPhotos" class="linarmal">Photos</li>
    </ul>
<div style="float: right">
        <div class="divicon-group" style="margin-top: -18px; margin-right: 10px;">
            <div style="float: left; margin-left: 8px;">
                <img src="images/messageicon.png" id="imgBlock" style="width: 25px; cursor: pointer;" title="Black this user from contacting you" />
            </div>
            <div style="float: left; margin-left: 8px; margin-right: 4px;">
                <img src="images/messageicon.png" id="imgReport" style="width: 25px; cursor: pointer;" title="Report this profile" />
            </div>
        </div>
</div>

</div>
<script type="text/javascript">

    var ISUSERBLOCKED = false;

    $(document).ready(function () {

        var _writtenPath = _SitePath + "web/inner/profilewritten";
        var _photosPath = _SitePath + "web/inner/profilephotos";
        $("#divMatchWritten").load(_writtenPath, function () {
        });
        $("#divMatchPhotos").load(_photosPath, function () {
        });


        $("#divMatchWritten").show();
        $("#liMatchWritten").addClass("liactive");
        $("#divMatchPhotos").hide();

        var _APIISBLOCKED = _SitePath + "api/HasUserBlocked";
        var _BlockedObj = new Object();
        _BlockedObj.BlockedUserID = _OtherUserID;
        $.postDATA(_APIISBLOCKED, _BlockedObj, function (_BlakObject) {
            ISUSERBLOCKED = _BlakObject;
        });


        $("#liMatchWritten").click(function () {
            ClearActiveClass();
            $("#divMatchWritten").show();
            $("#divMatchPhotos").hide();
            $("#liMatchWritten").addClass("liactive");
        });

        $("#liMatchPhotos").click(function () {
            ClearActiveClass();
            $("#divMatchWritten").hide();
            $("#divMatchPhotos").show();
            $("#liMatchPhotos").addClass("liactive");
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




    });


    function ClearActiveClass() {
        $("#liMatchPhotos").removeClass("liactive");
        $("#liMatchWritten").removeClass("liactive");
    }


    


</script>
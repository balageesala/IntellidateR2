<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="IntellidateR1Web.web.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:literal id="ltScripts" runat="server"></asp:literal>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    
     <div style="width:880px;float:left;margin:0 auto;padding:10px;margin-top:-30px;font-weight:bold;" >Your Notifications : </div>
     <div id="DivNotifications" runat="server" style="width:880px;float:left;margin:0 auto;padding:10px;" ></div>


    <script type="text/javascript">

        $(document).ready(function () {

           
            $("#btnDeleteAll").hide();


            $("#chkSelectAll").change(function () {
                var IsSeleted = $(this).is(':checked');
                if (IsSeleted) {
                    $(".chknotis").each(function () {
                        $(this).prop("checked", true);
                    });
                    $("#btnDeleteAll").show();
                } else {
                    $(".chknotis").each(function () {
                        $(this).prop("checked", false);
                    });
                    $("#btnDeleteAll").hide();
                }
            });


            $(".chknotis").change(function () {

                var _allChecked = true;
                var _isAnyOne = false;
                $(".chknotis").each(function (_pos, _obj) {
                    if ($(_obj).is(":checked") == false) {
                        _allChecked = false;

                    }
                    if ($(_obj).is(":checked") == true) {
                        _isAnyOne = true;
                    }
                });

                if (_allChecked) {
                    $("#chkSelectAll").prop("checked", true);
                } else {
                    $("#chkSelectAll").prop("checked", false);
                }

                if (_isAnyOne) {
                    $("#btnDeleteAll").show();
                } else {
                    $("#btnDeleteAll").hide();
                }


            });




            $(".imgDelete").click(function () {
                var _notiId = $(this).attr("alt");
                var _ApiDeleteNoti = _SitePath + "Api/DeleteNotification";
                var _NotiObject = new Object();
                _NotiObject.NotificationID = _notiId;
                $.postDATA(_ApiDeleteNoti, _NotiObject, function (_res) {
                    if (_res) {
                        $("#div" + _notiId).remove();
                    }
                });
            });


            $("#btnDeleteAll").click(function () {
                
                $(".chknotis").each(function (_pos, _obj) {
                    if ($(_obj).is(":checked") == true) {
                        var _notiId = $(_obj).val();
                        var _ApiDeleteNoti = _SitePath + "Api/DeleteNotification";
                        var _NotiObject = new Object();
                        _NotiObject.NotificationID = _notiId;
                        $.postDATA(_ApiDeleteNoti, _NotiObject, function (_res) {
                            if (_res) {
                                $("#div" + _notiId).remove();
                            }
                        });
                    }
                });

            });




        });

       
        




    </script>



</asp:Content>

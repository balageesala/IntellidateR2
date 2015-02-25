<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="ActivateAccount.aspx.cs" Inherits="IntellidateR1Web.web.css.ActivateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
          $(document).ready(function () {
              window.history.forward(-1);
          });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 800px; height: 450px; margin: 0 auto; background: #fff;">
        <div style="font-size: 18px; padding-top: 30px; text-align: center;">Activate Your Account </div>
        <div id="divActivate" style="width:300px;margin:0 auto;">
            <div style="margin-top: 10px;">
                <input type="text" id="txtEmailAddress" class="" style="width: 280px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="Please enter email address" />
            </div>
            <div id="divEmailAddressError" style="margin-top: 4px;color:red;"></div>
            <div style="margin-top: 10px;">
                <input type="button" value="Submit" id="btnSubmitEmail" class="DbuttonActivate" style="width: 294px;" /></div>
        </div>

        <div id="divEnterCode" style="width:300px;margin:0 auto;">
            <div style="margin-top: 10px;">
                <input type="text" id="txtSecurityCode" class="" style="width: 280px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="Please enter security code" />
            </div>
            <div id="divCodeError" style="margin-top: 4px;color:red;"></div>
            <div style="margin-top: 10px;">
                <input type="button" value="Activate Account" id="btnActivate" class="DbuttonActivate" style="width: 294px;" /></div>
        </div>
    </div>


    <script type="text/javascript">


        $(document).ready(function () {

            $("#divActivate").show();
            $("#divEnterCode").hide();

            $("#txtEmailAddress").blur(function () {
                ValidateEmailAddress($("#txtEmailAddress").val());
            });

            $("#txtEmailAddress").keyup(function () {
                HideError("#divEmailAddressError");
            });

            $("#btnSubmitEmail").click(function () {
                if (_emailValid) {
                    var _apiActivateUser = _SitePath + "API/ActivateUser";
                    var _apiActivateUserObject = new Object();
                    _apiActivateUserObject.EmailAddress = $("#txtEmailAddress").val();
                    $.postDATA(_apiActivateUser, _apiActivateUserObject, function (_return) {
                        if (_return) {
                            $("#divActivate").hide();
                            $("#divEnterCode").show();
                            ShowError("#divEmailAddressError", "Security code send to your account");
                        }
                        else {
                            $("#divActivate").show();
                            $("#divEnterCode").hide();
                            ShowError("#divEmailAddressError", "Please verify your email address");
                        }
                    });


                } else {
                    ShowError("#divEmailAddressError", "Please verify your email address");
                }
            });

            $("#btnActivate").click(function () {

                var _sCode = $("#txtSecurityCode").val();
                if (_sCode.trim() == "") {
                    ShowError("#divCodeError", "Please enter your security code.");
                    return;
                } else {

                    var _apiCheckCode = _SitePath + "API/CheckSecurityCode";
                    var _apiCheckCodeObject = new Object();
                    _apiCheckCodeObject.SCode = $("#txtSecurityCode").val();
                    $.postDATA(_apiCheckCode, _apiCheckCodeObject, function (_return) {
                        if (_return) {
                            window.location.href = _SitePath + "web/Home";
                        }
                        else {
                            ShowError("#divCodeError", "Please verify your code");
                        }
                    });

                }

            });




        });


        var _emailValid;
        function ValidateEmailAddress(_value) {
            if (_value.trim() == "") {
                ShowError("#divEmailAddressError", REG_NOEMAIL);
                _emailValid = false;
                return;
            }

            var _EmailAddressPattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
            if (!_EmailAddressPattern.test(_value)) {
                _emailValid = false;
                ShowError("#divEmailAddressError", REG_INVEMAIL);
                return;
            }

            var _apiPath = _SitePath + "API/ISCheckExistingEmailAddress";
            var _apiObject = new Object();
            _apiObject.EmailAddress = _value;

            $.postDATA(_apiPath, _apiObject, function (_return) {
                if (_return) {
                    _emailValid = true;
                    return;
                }
                else {
                    ShowError("#divEmailAddressError", "email address not in our database");
                    _emailValid = false;
                    return;
                }
            });
        }

        function ShowError(fieldID, errorMessage) {
            $(fieldID).html(errorMessage);

        }

        function HideError(fieldID) {
            $(fieldID).html("");
        }

    </script>




</asp:Content>

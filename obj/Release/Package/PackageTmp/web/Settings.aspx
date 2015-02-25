<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="IntellidateR1Web.web.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

     input[type=radio]{
         height:18px;
         width:18px;
     }
     .btncontacts{
         
    padding: 4px 8px;
    border-radius: 3px;
    background-color: #c1272d;
    font-size: 0.85em;
    font-weight: 400;
    letter-spacing: 1px;
    color: #fff;
    text-align: center;
    border: none;
    cursor: pointer;
    float: left;
    margin-top: 4px;
     }

    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="ltJs" runat="server"></asp:Literal>
    <div class="divsettings" style="margin-top: -50px;">
        <div class="divWhiteBox">
            <div style="padding: 20px;">
                <div style="padding: 20px; padding-left: 80px; border-bottom: 2px solid #C1282D; background: #f2f2f2; float: left;">
                    <div style="font-weight: bold; padding-bottom: 20px; padding-top: 20px; padding: 4px;">Genaral Settings</div>
               
                    <div style="float:left;width:100%;">
                        <div style="float:left;width:100%;">Add Contacts</div>
                        <div style="float:left;width:100%;"> <input type="button" value="Add Contact" class="btncontacts" id="btnAddContact"  /></div>
                        <div style="float:left;width:100%;"> <input type="button" value="Import Contacts" class="btncontacts" id="btnImportContacts"  /></div>
                    </div>
                    
                     <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px; padding-top: 2px;">Change Username</div>
                        <div style="float: left; margin-left: 20px;">
                            <input type="text" id="txtUserName" />
                        </div>
                        
                         <div style="float: left; margin-left: 20px;">
                             <input type="button" value="Change Username" class="DbuttonChangeDS" id="btnUserName" disabled="disabled" />
                             </div>
                        <div id="divLoginNameError" style="width:100%;float:inherit;margin-left: 182px;color:red;"></div>
                    </div>

                      <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px; padding-top: 2px;">Change Email</div>
                        <div style="float: left; margin-left: 20px;">
                            <input type="text" id="txtEmil" />
                        </div>
                          <div style="float: left; margin-left: 20px;">
                             <input type="button" value="Change Email" class="DbuttonChangeDS" id="btnEmail" disabled="disabled" />
                             </div>
                           <div id="divEmailAddressError" style="width:100%;float:inherit;margin-left: 182px;color:red;"></div>
                    </div>



                    <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px; padding-top: 2px;">Current Password</div>
                        <div style="float: left; margin-left: 20px;">
                            <input type="password" id="txtCPassword" />
                        </div>
                    </div>
                    <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px; padding-top: 2px;">New Password</div>
                        <div style="float: left; margin-left: 20px;">
                            <input type="password" id="txtNPassword" />
                        </div>
                    </div>
                    <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px;padding-top: 2px;">Retype Password</div>
                        <div style="float: left; margin-left: 20px;">
                            <input type="password" id="txtRetypePassword" />
                        </div>

                         <div style="float: left; margin-left: 20px;">
                             <input type="button" value="Change Password" class="DbuttonChangeDS" id="btnChangePwd" disabled="disabled" />
                             </div>
                          <div id="divPasswordError" style="width:100%;float:inherit;margin-left: 182px;color:red;"></div>
                    </div>
                </div>

                <div style="padding: 20px; padding-left: 80px; border-bottom: 2px solid #C1282D; background: #f2f2f2; float: left; margin-top: 10px; width: 86%;">
                    <div style="font-weight: bold; padding-bottom: 20px; padding-top: 20px; padding: 4px;">Message Filters</div>
                    <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px; padding-top: 2px;">Number of characters</div>
                        <div style="float: left; margin-left: 20px;" >
                            <div style="float: left;">
                             <input type="checkbox" id="chkCharacters" style="width: 18px;height: 18px;" />
                                </div>

                            <div style="float: left;" id="divchars">
                             <div  style="float: left;">   <div style="width: 38px; float: left;">Min:</div>
                                <input type="text" id="txtMinChars"  maxlength="4"  style="width: 40px;" />
                                       <span id="lblMinChars"></span> 
                               </div>
                                <div  style="float: left;">
                           
                                <div style="width: 38px; float: left;margin-left:6px;">Max:</div>
                                <input type="text" id="txtMaxChars"  maxlength="4"  style="width: 40px;" />
                                <span id="lblMaxChars"></span> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 160px; padding-top: 2px;">Profanity</div>
                        <div style="float: left; margin-left: 20px;">
                            <div style="float: left;">
                                <input type="checkbox" id="chkProfanity" style="width: 18px;height: 18px;" />
                                <span id="lblProfanity"></span> 
                            </div>
                        </div>
                    </div>

                     <div style="width: 100%; float: left; padding: 4px;">
                         <span style="color:red;" id="lblfiltermsg"></span>
                        <div style="float: right;"><input type="button" value="Save Filters" id="btnSaveMessagefilter" class="DbuttonChange"  /></div>
                          </div>

                </div>
          <div style="padding: 20px; padding-left: 80px;  background: #fff; float: left; margin-top: 10px; width: 86%;">

                    <div style="width: 100%; float: left; padding: 4px;">
                        <div style="float: left; width: 180px; padding-top: 2px;font-weight:bold;">Instant Messenger </div>
                        <div style="float: left;">
                           <div style="margin-bottom:8px;float:left;font-size:18px;"> <label for="radon">on</label></div>
                            <input type="radio" value="true" id="radon" name="radim" />
                        </div>
                        <div style="float: left; margin-left: 18px;">
                          <div style="margin-bottom:8px;float:left;font-size:18px;"> 
                                <label for="radoff">off</label></div>
                            <input type="radio" id="radoff" value="false" name="radim" /></div>
                        <div style="float: left;"></div>
                    </div>


                    <div style="width: 100%; float: left; padding: 4px;" id="divOnetimeLimit" >
                        <div style="float: left; width: 260px; padding-top: 4px;">One time limit to recived messages: </div>
                        <div style="float: left; padding-top: 2px;">
                            <input type="text" id="txtOneTimeLimit" style="width: 40px;"  /></div>
                    </div>
                                    
                 <div style="width: 100%; float: left; padding: 4px;margin-top:10px;">
                    <div style="float: left; width: 100%; padding-top: 4px;font-weight:bold;">Account Settings </div>
                   
                     <div style="float: left; width: 100%; padding-top: 4px;">
                    <div style="float: left;padding-top: 4px;">
                      <div style="margin-bottom:8px;float:left;font-size:18px;"> 
                            <label for="radActivate">Activate</label></div>
                        <input type="radio" value="A" id="radActivate" name="radacc" />
                    </div>
                    <div style="float: left; margin-left: 18px;padding-top: 4px;">
                     <div style="margin-bottom:8px;float:left;font-size:18px;"> 
                            <label for="radDeActivate">Deactivate</label></div>
                        <input type="radio" id="radDeActivate" value="I" name="radacc" /></div>
                    <div style="float: left; margin-left: 18px;padding-top: 4px;">
                       <div style="margin-bottom:8px;float:left;font-size:18px;"> 
                            <label for="radDelete">Delete</label></div>
                        <input type="radio" id="radDelete" value="D" name="radacc" />
                    </div>
                     </div>
                </div>
                      <div style="width: 100%; float: left; padding: 4px;margin-top:10px;color:red;">
                         <span id="lblAccountSettings"></span>
                      </div>
                </div>
                 <div style="width: 222px; float: right;">
                       <div style="float: right;"><input type="button" value="Save and Update" id="btnSubmit" class="DbuttonSubmit"  /></div>
          
                    <div style="float: right;margin-right:2px;"><input type="button" value="Cancel" id="btnCancel" class="DbuttonCancel"  /> </div>
                       </div>

                   </div>
        </div>

        <div class="divSettingsBlockBox">
            &nbsp;
        </div>
        </div>

    <script type="text/javascript">


        var _changeSetting;
        var _Width = 300;
        var _Height = 200;
        var _loginNameValid = false;
        var _emailValid = false;
        var _passwordValid = false;
        var _rpasswordValid = false;
        var _Url;
        var _UserGender;
        $(document).ready(function () {

            var API_GETUSER =_SitePath + "api/GetUserDetails";

            $.getDATA(API_GETUSER, function (_return) {
                _UserGender = _return.Gender;
                $("#txtUserName").val(_return.LoginName);
                $("#txtCPassword").val(_return.Password);
                $("#txtEmil").val(_return.EmailAddress);
                if (_return.Gender == 2) {
                    $("#divOnetimeLimit").show();
                } else {
                    $("#divOnetimeLimit").hide();
                }
            });

        $("#txtUserName").keyup(function () {
            $("#btnUserName").attr("disabled", false);
            $("#btnUserName").removeClass("DbuttonChangeDS");
            $("#btnUserName").addClass("DbuttonChange");
            HideError("#divLoginNameError");
        });

        $("#txtEmil").keyup(function () {
            $("#btnEmail").attr("disabled", false);
            $("#btnEmail").removeClass("DbuttonChangeDS");
            $("#btnEmail").addClass("DbuttonChange");
            HideError("#divEmailAddressError");
        });

        $("#txtRetypePassword").keyup(function () {
            $("#btnChangePwd").attr("disabled", false);
            $("#btnChangePwd").removeClass("DbuttonChangeDS");
            $("#btnChangePwd").addClass("DbuttonChange");
            HideError("#divPasswordError");

        });



   

        $("#btnUserName").click(function () {
            _changeSetting = "U";
            ValidateLoginName($("#txtUserName").val());
            

        });

        $("#btnEmail").click(function () {
            _changeSetting = "E";
            ValidateEmailAddress($("#txtEmil").val());            
        });

        $("#btnChangePwd").click(function () {
            _changeSetting = "P";
            ValidateRPassword($("#txtNPassword").val(), $("#txtRetypePassword").val());
        });

    

        $("#btnAddContact").click(function () {
            _Url = _SitePath + "web/inner/addcontact";
            SetUrlIntelliWindow(_Url, 640, 500);
        });


        $("#btnImportContacts").click(function () {
            _Url = _SitePath + "web/inner/importcontacts";
            SetUrlIntelliWindow(_Url, 640, 500);
        });
        

    });




        function ValidateLoginName(_value) {
            if (_value.trim() == "") {
                ShowError("#divLoginNameError", REG_NOLOGIN);
                _loginNameValid = false;
                return;
            }

            var LoginNamePattern = new RegExp(/^[a-z][a-z0-9_.-]{4,19}$/);
            if (!LoginNamePattern.test(_value)) {
                _loginNameValid = false;
                ShowError("#divLoginNameError", REG_INVLOGIN);
                return;
            }

            var _apiPath = _SitePath + "API/CheckExistingLoginName";
            var _apiObject = new Object();
            _apiObject.LoginName = _value;

            $.postDATA(_apiPath, _apiObject, function (_return) {
                if (_return) {
                    _loginNameValid = false;
                    ShowError("#divLoginNameError", REG_EXISTINGLOGIN);
                    return;
                }
                else {
                    _Url = _SitePath + "web/inner/password";
                    SetUrlIntelliWindow(_Url, _Width, _Height);
                }
            });
        }

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

            var _apiPath = _SitePath + "API/CheckExistingEmailAddress";
            var _apiObject = new Object();
            _apiObject.EmailAddress = _value;

            $.postDATA(_apiPath, _apiObject, function (_return) {
                if (_return) {
                    _emailValid = false;
                    ShowError("#divEmailAddressError", REG_EXISTINGEMAIL);
                    return;
                }
                else {
                    _Url = _SitePath + "web/inner/password";
                    SetUrlIntelliWindow(_Url, _Width, _Height);
                }
            });
        }


       

        function ValidateRPassword(_value,_revalue) {

            if (_value.trim() == "") {
                ShowError("#divPasswordError", REG_NOPASSWORD);
                return;
            }
            if (_value.length < 8) {
                ShowError("#divPasswordError", REG_SMALLPASSWORD);
                return;
            }
            if (_revalue.trim() != _value) {
                ShowError("#divRPasswordError", REG_PASSWORDNOMATCH);
                return;
            } else {
                _Url = _SitePath + "web/inner/password";
                SetUrlIntelliWindow(_Url, _Width, _Height);
            }

        }

        function ShowError(fieldID, errorMessage) {
            $(fieldID).css("color", "red");
            $(fieldID).html(errorMessage);
        }

        function HideError(fieldID) {
            $(fieldID).html("");
        }

    </script>



    <script type="text/javascript">

        $(document).ready(function () {

            $("#divchars").hide();

            var _GetSettingsAPI = _SitePath + "API/GetFilterSettings";
            $.getDATA(_GetSettingsAPI, function (_data) {
                if (_data != null) {
                    $("#chkCharacters").prop("checked", _data.IsCharectorsCheck);
                    $("#chkProfanity").prop("checked", _data.ProfanityCheck);
                    $("#txtMinChars").val(_data.MinChars);
                    $("#txtMaxChars").val(_data.MaxChars);
                    if (_data.IsCharectorsCheck) {
                        $("#divchars").show();
                    }
                  }
            });

            $("#chkCharacters").change(function () {
                if ($("#chkCharacters").is(':checked')) {
                    $("#divchars").show();
                } else {
                    $("#divchars").hide();
                }
            });



            //update settings
            $("#btnSaveMessagefilter").click(function () {
                    var minChars = $("#txtMinChars").val();
                    var maxChars = $("#txtMaxChars").val();
                    if (minChars > maxChars) {
                        $("#lblfiltermsg").html("Opps max is always bigger").show().fadeOut(4000);
                        return;
                    }
                
                    var _GetSettingsAPI = _SitePath + "API/PostFilterSettings";
                    var m_SettingsObj = new Object();
                    m_SettingsObj.IsCharectors = $("#chkCharacters").is(":checked");
                    m_SettingsObj.MinChars = minChars;
                    m_SettingsObj.MaxChars = maxChars;
                    m_SettingsObj.IsProfinity = $("#chkProfanity").is(":checked");

                    $.postDATA(_GetSettingsAPI, m_SettingsObj, function (_ret) {
                        if (_ret) {
                            $("#lblfiltermsg").html("Settings updated successfully.").show().fadeOut(4000);
                        }
                    });
                

            });


            $("#txtMinChars").keypress(function (e) {
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    $("#lblMinChars").html("Enter numbers Only").show().fadeOut(4000);
                    return false;
                }
            });

            $("#txtMaxChars").keypress(function (e) {
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    $("#lblMaxChars").html("Enter numbers Only").show().fadeOut(4000);
                    return false;
                }
            });
           

        });


</script>

    <script type="text/javascript">

        $(document).ready(function () {

            var _GetAccountSettingsAPI = _SitePath + "api/GetAccountSettings";
            $.getDATA(_GetAccountSettingsAPI, function (_data) {
                if (_data != null) {
                    if (_data.InstantMessanger) {
                        $("#radon").prop("checked", true);
                    } else {  
                        $("#radoff").prop("checked", true);
                    }
                    if (_data.AccoutStatus == "A") {
                        $("#radActivate").prop("checked", true);
                    } else if (_data.AccoutStatus == "I") {
                        $("#radDeActivate").prop("checked", true);
                    } else {
                        $("#radDelete").prop("checked", true);
                    }
                    $("#txtOneTimeLimit").val(_data.OneTimeLimit);
                }
            });

            $("#btnSubmit").click(function () {

                var _SettingsObj = new Object();
                var _STTINGS_API = _SitePath + "api/UpdateAccountSettings";
                _SettingsObj.InstantMessanger = $("input[name=radim]:checked").val();
                if(_UserGender==2){
                    _SettingsObj.OneTimeLimit = $("#txtOneTimeLimit").val();
                    }else{
                    _SettingsObj.OneTimeLimit=1;
                }
               var _AccountStatus  = $("input[name=radacc]:checked").val();
               _SettingsObj.AccoutStatus = _AccountStatus;
               _SettingsObj.BrowseInvisibleOption = false;
               _SettingsObj.SaveInvisibleOption = false;

               if (_AccountStatus == "I") {

                   if (confirm("Are you sure you want to deactivate your account.")) {
                       $.postDATA(_STTINGS_API, _SettingsObj, function (_ret) {
                           if (_ret) {
                               $("#lblAccountSettings").html("Your account is DeActivated successfully");
                               $("#lblAccountSettings").show().fadeOut(5000);
                               setTimeout(function () {
                                   try {
                                       window.location.href = _SitePath + "web/LogOut";
                                   } catch (e) {
                                       window.location.href = _SitePath + "web/LogOut";
                                   }
                               }, 5000);


                           }
                       });
                   }
               } else if (_AccountStatus == "D") {
                   if (confirm("Are you sure you want to delete your account.")) {
                       $.postDATA(_STTINGS_API, _SettingsObj, function (_ret) {
                           if (_ret) {
                               $("#lblAccountSettings").html("Your account is deleted with in 7 days.");
                               $("#lblAccountSettings").show().fadeOut(5000);
                               setTimeout(function () {
                                   try {
                                       window.location.href = _SitePath + "web/LogOut";
                                   } catch (e) {
                                       window.location.href = _SitePath + "web/LogOut";
                                   }
                               }, 5000);
                           }
                       });
                   }
               } else {
                   $.postDATA(_STTINGS_API, _SettingsObj, function (_ret) {
                       if (_ret) {
                           $("#lblAccountSettings").html("Settings updated successfully");
                           $("#lblAccountSettings").show().fadeOut(5000);
                       }
                   });
               }

            });


            $("#btnCancel").click(function () {
                window.location.href = "Home";
            });






        });



    </script>




</asp:Content>

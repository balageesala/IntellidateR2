<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profilequestions.aspx.cs" Inherits="IntelliWebR1.web.inner.profilequestions" %>

<%@ Register Src="~/web/uc/profilequestionsmenu.ascx" TagPrefix="uc1" TagName="profilequestionsmenu" %>


<asp:literal id="ltScripts" runat="server"></asp:literal>
<style type="text/css">
    .lnkbutton {
        padding: 5px 10px;
        border-radius: 3px;
        background-color: #c1272d;
        height: 22px;
        font-size: 0.85em;
        font-weight: 400;
        letter-spacing: 1px;
        color: #fff;
        text-align: center;
        border: none;
        cursor: pointer;
        float: right;
        padding-top: 10px;
        text-decoration: none;
    }

    .redColor {
        color: red;
    }
</style>

<div>
    <uc1:profilequestionsmenu runat="server" ID="profilequestionsmenu" />
</div>

<div style="float: left; width: 100%;">
    <div style="margin-left: 470px; margin-top: 10px; float: left;height:50px;" id="divDropDown" runat="server">
        <input type="text" id="txtSearchText" style="width: 380px; height: 30px; font-size: 18px; font-family: Arial; position: absolute; z-index: 999;" />
        <select id="cboDisplayType" style="width: 400px; height: 36px; font-size: 22px; font-family: Arial; position: absolute;">
            <option value="0"></option>
            <option value="1">The order in which they appear to them</option>
            <option value="2">Their answers are unacceptable</option>
            <option value="3">My answers are unacceptable</option>
            <option value="4">Both of our answers are unacceptable</option>
            <option value="5">We both agree</option>
            <option value="6">Unanswered by me</option>
            <option value="7">Answers with comments</option>
        </select>
        <input type="hidden" id="hdnSearchType" value="0" />
    </div>
</div>
<div id="divBothAnswered" style="float: left; width: 170%;" runat="server">
    <asp:repeater id="rptPhilosophyMatch" runat="server" onitemdatabound="rptPhilosophyMatch_ItemDataBound">
                <ItemTemplate>
                    <asp:Panel ID="pnlAnswered" runat="server">
                        <div style="width: 564px; float: left; min-height: 250px; margin: 4px;padding-bottom:20px;background:#ECECEC;border-bottom:2px solid #C1282D;margin-left: 10px;margin-right: 20px;padding-top: 26px;padding-left: 30px;padding-right: 20px;">
                            <div style="margin: 10px; font-family: Arial; font-size: 16px; font-weight: bold;" id="lblQuestion" runat="server"></div>
                            <div style="margin: 4px;">
                                <div style="float: left; width: 60px; height: 60px; border: 1px solid; padding: 2px 2px;padding-bottom: 1px;border:1px solid #ccc;border-radius:2px 2px;">
                                    <img id="imgOtherUserIcon" style=" width: 60px; height: 60px;"  runat="server" />
                                </div>
                                <div style="float: left;">
                                    <div style="margin: 4px; padding: 4px; font-family: Arial; font-size: 12px;">
                                        <div id="lblOtherUserAnswer" style="font-size: 14px;min-height:50px;" runat="server"></div>
                                        <div style="margin: 4px; min-height: 20px; width: 350px;" id="lblOtherUserComment" runat="server"></div>
                                        <div id="divAnswerNow" visible="false" style="font-size: 14px; margin-top: -20px; margin-left: 100px;" runat="server">
                                            <a id="lnkAnswerNow" class="lnkAnswerNow" style="font-size: 18px;" runat="server">Answer</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="clear: both;"></div>
                             <div style="margin: 4px;">
                                <div style="float: left; width: 60px; height: 60px;padding: 2px 2px;padding-bottom: 1px;border:1px solid #ccc;border-radius:2px 2px;">
                                    <img id="imgUserIcon" style=" width: 60px; height: 60px;" runat="server" />
                                </div>
                                <div style="float: left;">
                                    <div style="margin: 4px; padding: 4px; font-family: Arial; font-size: 12px;">
                                        <div id="lblUserAnswer" style="font-size: 14px;min-height:50px;" runat="server"></div>
                                        <div style="margin: 4px; min-height: 20px; width: 350px;" id="lblUserComment" runat="server"></div>
                                    </div>
                                </div>
                            </div>   
                            <div style="clear: both;"></div>
                            <div style="text-align: right; margin-right: 20px;">
                                <input type="button" id="btnChatAboutIt" data-width="500" data-height="320" class="DbuttonSubmit ChatAboutIt" runat="server" value="Discuss" />
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlNotAnswered" runat="server" Visible="false">
                        <div runat="server" id="divLoadMatch" style="width: 564px; float: left; min-height: 120px; margin: 4px;padding-bottom:30px;background:#ECECEC;border-bottom:2px solid #C1282D;margin-left: 10px;margin-right: 20px;padding-top: 26px;padding-left: 30px;padding-right: 20px;">
                            <div id="lblQuestionText" runat="server" style="margin: 10px; font-family: Arial; font-size: 16px; font-weight: bold;"></div>
                            <div style="margin-top:20px;margin-left:10px;">
                                <asp:HyperLink ID="lnkAnswerQuestion" runat="server" CssClass="lnkbutton answerQuestion">Answer</asp:HyperLink>
                            </div>
                        </div>
                    </asp:Panel>

                     <asp:Panel ID="pnlSexQuestions" runat="server" Visible="false">
                          <div runat="server" id="DivLoadSexQtn" style="width: 95%; float: left;padding-bottom:0px;margin-left: 10px;margin-right: 10px;padding-top: 8px;padding-left: 10px;padding-right: 10px;">                   
                           <div id="lblSexQuestionText" runat="server" style="margin: 10px; font-family: Arial; font-size: 16px; font-weight: bold;"></div>  
                  </div>
                   </asp:Panel>

                </ItemTemplate>
            </asp:repeater>
    <input type="hidden" id="hdnSubMenu" runat="server" value="0" />
    <input type="hidden" id="hdnSearchText" value="0" runat="server" />

</div>


<div>
    <input type="hidden" id="hdnclass" value="0" />
   
    <input type="hidden" id="hdnUpdateMatchp" value="0" />
</div>


<script type="text/javascript">
    $(document).ready(function () {

        SetText();
        //$(".lnkAnswerNow").colorbox({ iframe: true, width: "900px", height: "440px" });;

        //$('#form1').bind("keyup keypress", function (e) {
        //    var code = e.keyCode || e.which;
        //    if (code == 13) {
        //        e.preventDefault();
        //        return false;
        //    }
        //});

        $("#cboDisplayType").change(function () {
            $("#txtSearchText").val($("#cboDisplayType option:selected").text());
            $("#hdnSearchType").val($(this).val());


            var _sUrl = _SitePath + "web/inner/profilequestions.aspx?u=" + _OtherUserID + "&l=" + $(this).val();
            //alert(_sUrl);
            ShowThisQuestions(_sUrl);
        });

        $("#txtSearchText").focus(function () {
            $("#txtSearchText").val("");
            $("#hdnSearchType").val("0");
        });

        $("#txtSearchText").keydown(function (e) {
            if (e.keyCode == 13) {
                // Search with keyword
                var _qtnText = $("#txtSearchText").val();
                var _sUrl = _SitePath + "web/inner/profilequestions.aspx?u=" + _OtherUserID + "&l=9&qt=" + _qtnText;
                ShowThisQuestions(_sUrl);
                _SelectedItem = 9;
            }
        });

        var _subMenuValue = $("#hdnSubMenu").val();
        if (_subMenuValue == "0") {
            $("#lnkGenaralQuestions").css("color", "red");
        } else {
            $("#lnkSexQuestions").css("color", "red");
        }



    });

    function LoadSexQuestions() {
        var _sUrl = _SitePath + "web/inner/profilequestions.aspx?u=" + _OtherUserID + "&l=8";
        ShowThisQuestions(_sUrl);
        LoadSexMatchp();
    }

    function LoadGenaralQuestions() {
        var _sUrl = _SitePath + "web/inner/profilequestions.aspx?u=" + _OtherUserID + "&l=0";
        ShowThisQuestions(_sUrl);
        LoadGenaralMatchp();
    }

    function LoadSexMatchp() {
        var _SexQmatchpPath = _SitePath + "web/inner/sexquestionsmatchp?OtherUserID=" + _OtherUserID + "&Type=q";
        $("#divLoadProfileMatchp").load(_SexQmatchpPath, function () {
        });
    }

    function LoadGenaralMatchp() {
        var _QmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=q";
        $("#divLoadProfileMatchp").load(_QmatchpPath, function () {
        });
    }




    function LetDiscuss(objUrl) {
        try {
            if (ISUSERBLOCKED) {
                SetUrlIntelliWindow(objUrl, "700", "420");
            } else {
                alert("this user blocked.");
            }
        } catch (ex) {
            //console.log(ex);
        }
    }





    function SetText() {
        /*The order in which they appear to her
        Her answers are unacceptable
        My answers are unacceptable
        Both of our answers are unacceptable
        We both agree
        Unanswered by me
        Answers with explanations*/
        var _Text = "";
        //alert(_SelectedItem);

        switch (eval(_SelectedItem)) {
            case 1: {
                _Text = "The order in which they appear to them";
                break;
            }
            case 2: {
                _Text = "Their answers are unacceptable";
                break;
            }
            case 3: {
                _Text = "My answers are unacceptable";
                break;
            }
            case 4: {
                _Text = "Both of our answers are unacceptable";
                break;
            }
            case 5: {
                _Text = "We both agree";
                break;
            }
            case 6: {
                _Text = "Unanswered by me";
                break;
            }
            case 7: {
                _Text = "Answers with comments";
                break;
            }
            case 9: {
                _Text = $("#hdnSearchText").val();             
                break;
            }

        }

       

        $("#txtSearchText").val(_Text);
    }
</script>
<script type="text/javascript">
    $(document).ready(function () {

        // Chat about it
        $(".ChatAboutIt").click(function (e) {
            try {
                if (ISUSERBLOCKED) {
                    var _composeUrl = $(this).attr("data-url");
                    SetUrlIntelliWindow(_composeUrl, "700", "420");
                } else {
                    alert("this user blocked.");
                }
            } catch (ex) {
                //console.log(ex);
            }

        });


        $(".answerQuestion").click(function () {
            try {
                var _AnswerQuestionUrl = $(this).attr("data-url");
                //  alert(_AnswerQuestionUrl);
                SetUrlIntelliWindow(_AnswerQuestionUrl, "1000", "658");
            } catch (ex) {

            }

        });

    });



    $(document).ready(
           function () {

               setInterval(function () {

                   var IsUpdateMatch = $("#hdnUpdateMatchp").val();
                   if (IsUpdateMatch == "1") {
                       var _QmatchpPath = _SitePath + "web/inner/profilematchp?OtherUserID=" + _OtherUserID + "&Type=q";
                       $("#divLoadProfileMatchp").load(_QmatchpPath, function () {
                           $("#hdnUpdateMatchp").val("0");
                       });
                   }
               }, 10000);
           });





</script>

<script type="text/javascript">

    $(document).ready(function () {

        CheckIsUserOnline();

    });


</script>

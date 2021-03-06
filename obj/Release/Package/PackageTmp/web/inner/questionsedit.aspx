﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questionsedit.aspx.cs" Inherits="IntellidateR1Web.web.inner.questionsedit" %>

<%@ Register Src="~/web/ko/template_questionsedit.ascx" TagPrefix="uc1" TagName="template_questionsedit" %>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/knockout/knockout-3.0.0.js" type="text/javascript"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<style type="text/css">
    body{
        background-color:none;
        background:none;
        font-family: Tahoma, sans-serif, Arial;
    }
     .SubmitButton div {
        padding-top: 8px;
        font-size: 18px;
        text-transform: uppercase;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

.SubmitButtonSmall {
    width: 78px;
    height: 34px;
    background-color: #C1282D;
    color: #ffffff;
    text-align: center;
    border-radius: 4px 4px;
    margin: 10px;
    cursor: pointer;
}

.FloatRight{
    float:right;
}

.Disabled {
    background-color: #999;
}



</style>
<asp:literal id="ltScripts" runat="server"></asp:literal>

<div style="display: inline-block; width: 920px; min-height: 620px; margin-left: 38px; max-height: 620px; border-radius: 4px 4px; border: 1px solid #C3C3C3; margin-top: 26px;background-color: #ECECEC;">
    <div style="height: 30px; text-align: right; margin-right: 6px; cursor: pointer;" id="btnClose">
        <img src="../images/close.png" />
    </div>
    <div style="display: inline-block; margin: 30px; margin-top: 0px; width: 850px; min-height: 560px; max-height: 560px; overflow-y: scroll; background-color: #ffffff; border: 1px solid #C3C3C3; border-radius: 4px 4px;" id="divQuestionEdit" data-bind="template: { name: 'template_questionsedit' }">
    </div>
</div>

<script type="text/html" id="template_questionsedit">

    <div style="width: 96%; margin: 20px; min-height: 360px; border-radius: 4px 6px;">
        <div style="min-height: 40px; text-align: center; padding: 4px;">
            <div style="margin: 10px; font-size: 16px;" data-bind="text: QuestionDetails().QuestionText"></div>

            <input type="hidden" class="optionAnswer" data-bind="value: OptionAnswerText " />
            <input type="hidden" class="preferenceAnswerText" data-bind="value: PreferenceAnswerText " />
        </div>
        <div style="width: 96%; background-color: #fff; min-height: 120px; display: inline-block; margin-left: 14px; border-radius: 4px 6px;">
            <div>
                <div style="float: left; width: 50%;">
                    <div style="font-size: 14px; padding: 16px;" data-bind="text: QuestionDetails().OptionsQuestion"></div>

                    <!--ko foreach:QuestionDetails().OptionElements().Options-->
                    <div style="font-size: 14px; padding: 8px; padding-left: 16px;">
                        <input type="radio" data-bind="attr: { id: OptionCheckID, value: _id ,'data-text': OptionText } " class="philosophyOptions" name="philosophyOptions" /><label data-bind="    attr: { 'for': OptionCheckID }, text: OptionText"></label>
                    </div>
                    <!--/ko-->

                </div>
                <div style="float: left; width: 50%;">
                    <div style="font-size: 14px; padding: 16px;" data-bind="text: QuestionDetails().PreferenceQuestion"></div>
                    <!--ko foreach:QuestionDetails().PreferenceElements().Options-->
                    <div style="font-size: 14px; padding: 8px; padding-left: 16px;">
                        <input type="checkbox" data-bind="attr: { id: OptionPrefCheckID, value: _id , 'data-text': OptionText }" class="philosophyPrefOptions" name="philosophyPrefOptions" /><label data-bind="    attr: { 'for': OptionPrefCheckID }, text: OptionText"></label>
                    </div>
                    <!--/ko-->
                    <!--ko if:QuestionDetails().PreferenceElements().HasSelectAllText-->
                    <div style="font-size: 14px; padding: 8px; padding-left: 16px;">
                        <input type="checkbox" id="chkSelectAll" /><label for="chkSelectAll" data-bind="text: QuestionDetails().PreferenceElements().SelectAllText"></label>
                    </div>
                    <!--/ko-->
                </div>
            </div>
            <div style="clear: both;"></div>
            <div style="height: 10px; width: 100%; margin-top: 10px;">
                <div style="float: left; width: 88%; background-color: #ccc;" id="divSlider">&nbsp;</div>
                <div style="float: left; width: 10%; margin-top: -3px;padding-left:12px;">
                    <input type="text" style="width: 30px;" id="txtSlider" data-bind="value: Rating "   maxlength="3" />
                </div>
            </div>
            <div style="clear: both;"></div>
            <div style="margin: 10px;">
                <div style="float: left;">
                    <textarea id="txtComment" style="width: 360px; height: 80px; border-radius: 4px 4px; resize: none; font-family: Tahoma;" placeholder="Comments (optional)" data-bind="value: Comment "></textarea>
                </div>
                <div style="float: left; border: 0px solid; margin-left: 125px; text-align: right;">
                    <div style="font-size: 14px;">

                        <input type="checkbox" id="chkAnswerPrivately" data-bind="checked: AnsweredPrivately" /><label for="chkAnswerPrivately">Answer Privately&nbsp;&nbsp;&nbsp;&nbsp;</label>

                    </div>
                    <div style="border: 0px solid; margin-top: 20px; height: 45px;">
                        <div style="float: left;">
                           &nbsp;
                        </div>
                        <div style="float: left;">

                            <input type="button" class="SubmitButtonSmall FloatRight"   style="border: 0px; font-size: 18px;" value="SUBMIT" id="btnSubmit" data-bind="event: { click: SubmitClick }" />

                        </div>
                    </div>
                </div>
                
            </div>
        </div>


        <div id="lblerror" style="text-align:center;color:red;"></div>

    </div>

</script>

<script type="text/javascript">

    $(document).ready(function () {

        $("#lblerror").html("");
        var APIGET_QUESTION = window.parent._SitePath + "api/GetQuestion";
        var _GetObject = new Object();
        _GetObject.Question_id = getParameterByName("qid");


        $.postDATA(APIGET_QUESTION, _GetObject, function (_return) {
            ko.applyBindings(new QuestionAnswerVM(_return), document.getElementById("divQuestionEdit"));

            $("#divSlider").slider({
                range: "max",
                min: 0,
                max: 10,
                value: $("#txtSlider").val(),
                slide: function (event, ui) {
                    $("#txtSlider").val(ui.value);
                }
            });

            CheckAnswredOptions();
            CheckPreferenceAnswers();
            
            $(".philosophyPrefOptions").bind("click", function () {
                SetButtonStatus();


                var _checked = true;
                $(".philosophyPrefOptions").each(function (_pos, _obj) {
                    if ($(_obj).is(":checked") == false) {
                        _checked = false;
                    }
                });
                $("#chkSelectAll").prop("checked", _checked);
                if (_checked) {
                    DisableSlider();
                }
                else {
                    EnableSlider();
                }

            });

            $("#chkSelectAll").bind("click", function () {

                var _checked = $("#chkSelectAll").is(":checked");
                $(".philosophyPrefOptions").each(function (_pos, _obj) {
                    $(_obj).prop("checked", _checked);
                });
                SetButtonStatus();
                if (_checked) {
                    DisableSlider();
                }
                else {
                    EnableSlider();
                }
            });

       
           
      


        });

        $("#btnClose").click(function () {
            window.parent.CloseIntelliWindow();
        });

       


    });

    function DisableSlider() {
        $("#divSlider").slider("value", 0);
        $("#divSlider").slider("disable");

        $("#txtSlider").val(0);
        $("#txtSlider").prop("disabled", true);
    }

    function EnableSlider() {
        $("#divSlider").slider("enable");
        $("#txtSlider").prop("disabled", false);
    }


    function CheckAnswredOptions() {

        var _optAnswerText = new Array();
        var optionAnswer = $(".optionAnswer").val();
        _optAnswerText = optionAnswer.split(',');

          $(".philosophyOptions").each(function (_pos, _obj) {
             
              var _optAns = $(_obj).attr("data-text");
              for (var i = 0; i < _optAnswerText.length; i++) {
                  if (_optAnswerText[i] == _optAns) {
                      $(_obj).prop("checked", true);
                  }
              }
          });

    }


    function CheckPreferenceAnswers() {

        var _preAnswerText = new Array();
        var preferenceAnswer = $(".preferenceAnswerText").val();
        _preAnswerText = preferenceAnswer.split(',');

            $(".philosophyPrefOptions").each(function (_pos, _obj) {
                var _optAns = myTrim($(_obj).attr("data-text"));
                for (var i = 0; i < _preAnswerText.length; i++) {
                var _valueText = myTrim(_preAnswerText[i]);
                if (_valueText == _optAns) {
                    $(_obj).prop("checked", true);
                }
            }
        });


    }


  


        function SetButtonStatus() {
            var _optionChecked = false;
            $(".philosophyOptions").each(function (_pos, _obj) {
                if ($(_obj).is(":checked") == true) {
                    _optionChecked = true;
                }
            });

            var _preferenceChecked = false;
            $(".philosophyPrefOptions").each(function (_pos, _obj) {
                if ($(_obj).is(":checked") == true) {
                    _preferenceChecked = true;
                }
            });

            if (_optionChecked && _preferenceChecked) {
                if ($("#btnSubmit").hasClass("Disabled")) {
                    $("#btnSubmit").removeClass("Disabled");
                    $("#btnSubmit").removeAttr("disabled");
                }
            }
            else {
                if (!$("#btnSubmit").hasClass("Disabled")) {
                    $("#btnSubmit").addClass("Disabled");
                    $("#btnSubmit").attr('disabled', 'disabled');
                }
            }

        }


   



    function myTrim(x) {
        return x.replace(/^\s+|\s+$/gm, '');
    }




    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    function QuestionListVM(_in) {
        var self = this;
        self.AllQuestions = ko.observableArray();

        for (var i = 0; i < _in.length; i++) {
            self.AllQuestions.push(new QuestionsVM(_in[i]));
        }


    }

    function QuestionsVM(_in) {

        var self = this;

        self.ShowThisQuestion = ko.observable(false);
        self.HasUserAnswered = ko.observable(false);

        self._id = ko.observable(_in._id);
        self.QuestionID = ko.observable(_in.QuestionID);
        self.QuestionText = ko.observable(_in.QuestionText);
        self.QuestionCategory = ko.observable(_in.QuestionCategory);
        self.OptionsQuestion = ko.observable(_in.OptionsQuestion);
        self.PreferenceQuestion = ko.observable(_in.PreferenceQuestion);
        self.OptionType = ko.observable(_in.OptionType);
        self.PreferenceType = ko.observable(_in.PreferenceType);

        self.OptionElements = ko.observable(new ElementTypeSingleSelecttVM(_in.OptionElements));
        self.PreferenceElements = ko.observable(new ElementTypeMultiSelectVM(_in.PreferenceElements));


    }

    function QuestionAnswerVM(_in) {

        var self = this;
        self._id = ko.observable(_in._id);
        self.UserID = ko.observable(_in.UserID);
        self.Question_id = ko.observable(_in.Question_id);
        self.QuestionDetails = ko.observable(new QuestionsVM(_in.QuestionDetails));
        self.OptionAnswerText = ko.observable(_in.OptionAnswerText);
        self.PreferenceAnswerText = ko.observable(_in.PreferenceAnswerText);
        self.PreferenceAnswerTextFixed = ko.computed(function () {
            if (self.PreferenceAnswerText() != "") {
                return self.PreferenceAnswerText();
            }
            else {
                return "<span style=\"color:red;\">None</span>";
            }
        }, this);

        self.NonPreferenceAnswerText = ko.observable(_in.NonPreferenceAnswerText);
        self.NonPreferenceAnswerTextFixed = ko.computed(function () {
            if (self.NonPreferenceAnswerText() != "") {
                return self.NonPreferenceAnswerText();
            }
            else {
                return "<span style=\"color:red;\">None</span>";
            }
        }, this);

        self.Rating = ko.observable(_in.Rating);
        self.Comment = ko.observable(_in.Comment);
        self.AnsweredPrivately = ko.observable(_in.AnsweredPrivately);
        self.TimeStamp = ko.observable(_in.TimeStamp);
        self.LocalTime = ko.computed(function () {
            var date = new Date(self.TimeStamp());
            return date.toString() // "Wed Jun 29 2011 09:52:48 GMT-0700 (PDT)"
        }, this);

        self.IsSexQuestion = ko.computed(function () {
            if (eval(self.QuestionDetails().QuestionCategory()) == 1) {
                return true;
            }
            else {
                return false;
            }
        });

        self.CommentAvailable = ko.computed(function () {
            if (self.Comment() != "" && self.Comment() != null) {
                return true;
            }
            else {
                return false;
            }
        });



        SubmitClick = function (_data) {

            //alert("hi");


            var _EditObject = new Object();
            var _EditAPI = window.parent._SitePath + "api/EditUserAnswer";

            _EditObject.Question_id = _data.QuestionDetails()._id();
            _EditObject.OptionAnswer = GetEditSelectedOption();
            _EditObject.PreferenceAnswer = GetEditSelectedPreferences();
            _EditObject.Rating = $("#txtSlider").val();
            _EditObject.Comment = $("#txtComment").val();
            _EditObject.AnsweredPrivately = $("#chkAnswerPrivately").is(":checked");

           // console.log(_EditObject);

            $.postDATA(_EditAPI, _EditObject, function (_return) {
                // close and rebind the knock out
                if (_return) {
                    $("#lblerror").html("Question saved sucessfully.");
                    setTimeout(function () {
                        setTimeout(function () {
                            try {
                                window.parent.location.reload();
                                window.parent.CloseIntelliWindow();
                            } catch (e) {
                                window.parent.CloseIntelliWindow();
                            }
                        }, 2000);
                    }, 2000);
                } else {
                    window.parent.CloseIntelliWindow();
                }
                
            });
        };




    }

    function OptionsSingleSelectAnswerVM(_in) {
        var self = this;
        self.Option_id = ko.observable(_in.Option_id);
        
    }

    function OptionsMultiSelectAnswerVM(_in) {
        var self = this;
        self.Option_id = ko.observableArray();
        
        
        for (var i = 0; i < _in.Option_id.length; i++) {
            self.Option_id.push(_in.Option_id[i]);
        }
    }


    function ElementTypeSingleSelecttVM(_in) {
        var self = this;
        self.Options = ko.observableArray();
        self.SelectType = ko.observable(_in.SelectType);
        
        for (var i = 0; i < _in.Options.length; i++) {
            self.Options.push(new ElementOptionVM(_in.Options[i]));
        }
    }

    function ElementTypeMultiSelectVM(_in) {
        var self = this;

        self.Options = ko.observableArray();
        self.SelectType = ko.observable(_in.SelectType);
        self.SelectAllText = ko.observable(_in.SelectAllText);
        self.PlaceHolder = ko.observable(_in.PlaceHolder);

        for (var i = 0; i < _in.Options.length; i++) {
            self.Options.push(new ElementOptionVM(_in.Options[i]));
        }

        self.HasSelectAllText = ko.computed(function () {
            return (self.SelectAllText() != "");
        }, this);
    }

    function ElementOptionVM(_in) {
        var self = this;
        self._id = ko.observable(_in._id);
        self.OptionID = ko.observable(_in.OptionID);
        self.OptionText = ko.observable(_in.OptionText);
       
        
        self.OptionCheckID = ko.computed(function () {
            return "rdo_" + self._id();
        }, this)

        self.OptionPrefCheckID = ko.computed(function () {
            return "chk_" + self._id();
        }, this)
    }


    function GetEditSelectedOption() {

        var _optionID = "";
        $(".philosophyOptions").each(function (_pos, _obj) {
            if ($(_obj).is(":checked")) {
                _optionID = $(_obj).val();
            }
        });

        return _optionID;


    }

    function GetEditSelectedPreferences() {

        var _preferencesSelected = new Array();
        $(".philosophyPrefOptions").each(function (_pos, _obj) {
            if ($(_obj).is(":checked")) {
                _preferencesSelected.push($(_obj).val());
            }
        });

        return _preferencesSelected;
    }



</script>




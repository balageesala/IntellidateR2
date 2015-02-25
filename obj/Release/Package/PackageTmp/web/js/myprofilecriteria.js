﻿$(document).ready(function () {
    var _getCriteriaListAPI = _SitePath + "api/GetCriteriaList";
    $.getDATA(_getCriteriaListAPI, function (_return) {

        // applying the bindings
        ko.applyBindings(new VMCriteriaQuestionList(_return), document.getElementById("divMyProfileCriterias"));

        setTimeout(function () {
            $(".points").click(function () {
                if ($(this).val() == "0") {
                    $(this).val("");
                }
                else {
                    $(this).select();
                }
            });

            $(".points").blur(function () {
                if ($(this).val() == "") {
                    $(this).val("0");
                }

                var _valueEntered = $(this).val();

                if (isNaN(_valueEntered)) {
                    $(this).val("0");
                }
                else {
                    if (eval(_valueEntered) > 100) {
                        $(this).val("100");
                    }
                }

                var _expression = /^-?\d+[\.]?\d\d$/;

                if (_expression.test($(this).val()) == false) {
                    $(this).val("0");
                }

                var _remainingPoints = SetRemainingPoints();

                if (_remainingPoints < 0) {
                    //alert("Sorry you cannot enter " + _valueEntered + ". Please enter " + eval(Math.abs(Math.abs(_remainingPoints) - _valueEntered)) + " or less");
                    //$(this).select().focus();
                    $("#txtPointsLeft").addClass("CriteriaPointsRed");
                }
                else {
                    $("#txtPointsLeft").removeClass("CriteriaPointsRed");
                }
            });

            SetRemainingPoints();

            $(".editCriteria").click(function (e) {
                SetIntelliWindow(this, e);
            });

        }, 500);


        $("#btnSubmit").click(function () {
           
            if ($("#btnSubmit").data("enabled") == false) {
                return;
            }

            // get allotted points
            var _pointsAssigned = GetAssignedPoints();
            //console.log(_pointsAssigned);

            var _QuestionIDs = new Array();
            var _Points = new Array();

            for (var i = 0; i < _pointsAssigned.length; i++) {
                _QuestionIDs.push(_pointsAssigned[i].Criteria_id);
                _Points.push(_pointsAssigned[i].PointsAssigned);
            }

            var _CriteriaPoints = new Object();

            var _sQuestionIDs = "";
            for (var i = 0; i < _QuestionIDs.length; i++) {
                _sQuestionIDs = _sQuestionIDs + "," + _QuestionIDs[i];
            }
            _sQuestionIDs = _sQuestionIDs.substr(1);

            var _sPoints = "";
            for (var i = 0; i < _Points.length; i++) {
                _sPoints = _sPoints + "," + _Points[i];
            }
            _sPoints = _sPoints.substr(1);

            _CriteriaPoints.CriteriaQuestionIDs = _sQuestionIDs;
            _CriteriaPoints.Points = _sPoints;

            //console.log(_CriteriaPoints);

            var _assignPointsAPI = _SitePath + "api/CriteriaPoints";
            $.postDATA(_assignPointsAPI, _CriteriaPoints, function (_return) {
                $("#divPointsResult").html("Points assigned successfully.");
                setTimeout(function () {
                    $("#divPointsResult").html("&nbsp;");
                }, 2000);
            });
        });

    }, function () { });
});

function EnableButton(_buttonID) {
    if ($(_buttonID).hasClass("Disabled")) {
        $(_buttonID).removeClass("Disabled");
    }
    $(_buttonID).data("enabled", true);
}

function DisableButton(_buttonID) {
    if ($(_buttonID).hasClass("Disabled") == false) {
        $(_buttonID).addClass("Disabled");
    }
    $(_buttonID).data("enabled", false);
}

function GetAssignedPoints() {
    var _pointsArray = new Array();
    var _pointObject = new Object();

    $(".points").each(function (_pos, _obj) {
        _pointObject = new Object();
        _pointObject.Criteria_id = $(_obj).data("criteriaid");
        _pointObject.PointsAssigned = $(_obj).val();
        _pointsArray.push(_pointObject);
    });

    return _pointsArray;
}

function SetRemainingPoints() {
    var _points = 0;
    $('.points').each(function (i, obj) {
        _points = _points + eval($(obj).val());
    });
    var _pointsLeft = 100 - eval(_points);
    _pointsLeft = Math.round(_pointsLeft * 100) / 100

    $("#txtPointsLeft").val(_pointsLeft);

    if (eval(_pointsLeft) != 0) {
        DisableButton("#btnSubmit");
    }
    else {
        EnableButton("#btnSubmit");
    }
    return _pointsLeft;
}
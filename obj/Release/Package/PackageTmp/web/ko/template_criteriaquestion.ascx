<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_criteriaquestion.ascx.cs" Inherits="IntellidateR1Web.web.ko.template_criteriaquestion" %>
<script type="text/html" id="template_criteriaquestion">
    <div data-bind="attr: { id: _id }" class="displayNone">
        <!--ko if:ShowThisQuestion-->
        <div class="gradientGrey CriteriaGradientBox" data-bind="attr: { id: QuestionDivID }">
            <div>
                <div style="float: left; width: 40%;">
                    <!--ko if:ShowBackButton-->
                    <div data-bind="event: { click: BackClick }">
                        <div class="BackButton">
                            <div>back</div>
                        </div>
                    </div>
                    <!--/ko-->
                    <!--ko ifnot:ShowBackButton-->
                    &nbsp;
                <!--/ko-->
                </div>
                <div style="float: left; width: 60%; margin-top: 14px;">
                    <div class="CriteriaPositionBox">
                        <div class="CriteriaPositionBoxInner">
                            <div class="CriteriaPositionBoxCricle">
                                <div class="CriteriaPositionBoxText" data-bind="text: Index"></div>
                            </div>
                        </div>
                        <div class="CriteriaPositionBoxOfText">of</div>
                        <div class="CriteriaPositionBoxInner">
                            <div class="CriteriaPositionBoxCricle">
                                <div class="CriteriaPositionBoxText" data-bind="text: TotalCount"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="clear: both;"></div>
            <div class="CriteriaDividerLine gradientLine"></div>
            <section>
                <div>
                    <div class="QuestionText" data-bind="text: CriteriaName"></div>
                </div>
                <div class="QuestionArea" style="border: 0px solid; float: left;">
                    <div class="SelectionArea">
                        <div class="SelectionQuestion" data-bind="text: CriteriaQuestion"></div>
                        <div class="SelectionQuestion SelectionQuestionMargins">
                            <!--ko if:CriteriaType()=='1'-->
                            <!--ko foreach:CriteriaOptions-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="radio" data-bind="attr: { id: OptionCheckID, value: _id }" class="criteriaOptions" name="criteriaOptions" /><label data-bind="    attr: { 'for': OptionCheckID }, text: OptionText"></label>
                            </div>
                            <!--/ko-->
                            <!--/ko-->

                            <!--ko if:CriteriaType()=='2'-->
                            <!--ko foreach:CriteriaOptions-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="checkbox" data-bind="attr: { id: OptionCheckID, value: _id }" class="criteriaOptions" name="criteriaOptions" /><label data-bind="    attr: { 'for': OptionCheckID }, text: OptionText"></label>
                            </div>
                            <!--/ko-->
                            <!--/ko-->
                            <!--ko if:CriteriaType()=='7'-->
                            <div style="float: left;">
                                <select class="CriteriaCombo Month" data-bind="event: { change: CheckSubmitDisable }">
                                    <asp:Literal ID="ltMonths" runat="server"></asp:Literal>
                                </select>
                            </div>
                            <div style="float: left;">
                                <select class="CriteriaCombo Day" data-bind="event: { change: CheckSubmitDisable }">
                                    <asp:Literal ID="ltDays" runat="server"></asp:Literal>
                                </select>
                            </div>
                            <div style="float: left;">
                                <select class="CriteriaCombo Year" data-bind="event: { change: CheckSubmitDisable }">
                                    <asp:Literal ID="ltYears" runat="server"></asp:Literal>
                                </select>
                            </div>
                            <div id="lblCriteriaDobError"></div>
                            <!--/ko-->

                            <!--ko if:CriteriaType()=='8'-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="text" id="txtSalary" class="" style="width: 240px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="$" />
                            </div>
                            <div id="lblCriteriaSalaryError"></div>
                            <!--/ko-->

                            <!--ko if:CriteriaType()=='9'-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="text" id="txtZipCode" class="" maxlength="5" style="width: 240px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="Zipcode" />
                            </div>
                            <div id="lblCriteriaZipCodeError"></div>
                            <!--/ko-->



                        </div>
                    </div>
                    <div class="SelectionArea">
                        <!--ko if:ShowPartTwo-->
                        <div class="SelectionQuestion" data-bind="text: CriteriaPreferenceQuestion"></div>
                        <div class="SelectionQuestion SelectionQuestionMargins">

                            <!--ko if: CriteriaPreferenceType()=='1'-->
                            <!--ko foreach:CriteriaPreferenceOptions-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="checkbox" data-bind="attr: { id: OptionPrefCheckID, value: _id }" class="criteriaPrefOptions" name="criteriaPrefOptions" /><label data-bind="    attr: { 'for': OptionPrefCheckID }, text: OptionText"></label>
                            </div>
                            <!--/ko-->
                            <!--ko if:PreferenceSelectAllTextEnable_One-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="checkbox" id="chkSelectAll" /><label for="chkSelectAll" data-bind="text: PreferenceSelectAllText_One"></label>
                            </div>
                            <!--/ko-->
                            <!--/ko-->

                            <!--ko if:CriteriaPreferenceType()=='3'-->
                            <div style="float: left;">
                                <select class="CriteriaCombo SelectOptionsOne" data-bind="event: { change: CheckSubmitDisable }">
                                    <option selected class="selectOption" value="0">From</option>
                                    <!--ko foreach:CriteriaPreferenceOptions_One-->
                                    <option class="selectOption" data-bind="attr: { value: _id }, text: OptionText"></option>
                                    <!--/ko-->
                                </select>
                            </div>
                            <div style="float: left;">
                                <select class="CriteriaCombo SelectOptionsTwo" data-bind="event: { change: CheckSubmitDisable }">
                                    <option selected class="selectOption" value="0">To</option>
                                    <!--ko foreach:CriteriaPreferenceOptions_Two-->
                                    <option class="selectOption" data-bind="attr: { value: _id }, text: OptionText"></option>
                                    <!--/ko-->
                                </select>
                            </div>
                            <!--/ko-->
                            <!--ko if:CriteriaPreferenceType()=='4'-->

                            <!--ko if:CriteriaType()=='9'-->
                            <div style="padding: 4px; font-size: 14px;">
                                <input type="text" id="txtDistanceRange" class="clsDistanceRange"  maxlength="9"  style="width: 240px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="Distance in miles" />
                            </div>
                            <div id="lblCriteriaDistanceeError"></div>
                            <!--/ko-->

                            <!--ko ifnot:CriteriaType()=='9'-->
                            <div style="float: left;">
                                <input type="text" id="txtSalaryFrom" class="" style="width: 140px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="$" />
                            </div>
                            <div style="float: left;">to </div>
                            <div style="float: left;">
                                <input type="text" id="txtSalaryTo" class="" style="width: 140px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="$" />
                            </div>
                            <!--/ko-->
                            <!--/ko-->
                        </div>
                        <!--/ko-->
                    </div>
                </div>
            </section>
        </div>
        <div style="clear: both;"></div>
        <div class="ButtonsArea">
            <div class="SubmitButton FloatRight Disabled" id="btnSubmit" tabindex="0" data-bind="event: { click: SubmitClick }">
                <div>Submit</div>
            </div>
            <!--ko if:ShowSkipButton-->
            <div class="BackButton FloatRight" tabindex="0" id="btnSkip" data-bind="event: { click: SkipClick }">
                <div>skip</div>
            </div>
            <!--/ko-->
        </div>
        <!--/ko-->
    </div>
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $.getDATA(_SitePath + "api/GetCriteriaList", function (_return) {
            ko.applyBindings(new VMCriteriaQuestionList(_return), document.getElementById("divCriteriaQuetion"));

            $(document).keydown(function (e) {
                if (e.keyCode == 13) {
                    //check foucs button
                    var _submitFacus = $("#btnSubmit").is(":focus");
                    var _skipFacus = $("#btnSkip").is(":focus");
                    if (_submitFacus) {
                        var isBtnDisabled = $("#btnSubmit").hasClass('Disabled');
                        if (!isBtnDisabled) {
                            $("#btnSubmit").trigger("click");
                        }
                    }
                    if (_skipFacus) {
                        $("#btnSkip").trigger("click");
                    }
                }

            });

            ShowFirstUnAnswered();
        }, function () { });
    });
</script>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_criteriaedit.ascx.cs" Inherits="IntellidateR1Web.web.ko.template_criteriaedit" %>

<script type="text/html" id="template_criteriaedit">
    <!--ko if:ShowEditItem-->
    <div style="height: 20px;">&nbsp;</div>
    <div style="margin: 0 auto; font-size: 16px; text-align: center;" data-bind="text: CriteriaName"></div>
    <div class="QuestionArea" style="border: 0px solid;">
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
                    <input type="text" id="txtZipCode" class="" style="width: 240px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="Zipcode" />
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
                    <input type="text" id="txtDistanceRange" class="" style="width: 240px; height: 20px; border: 1px solid #ccc; border-radius: 4px 4px; padding: 6px;" placeholder="Distance" />
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
                <div style="clear:both;"></div>
                <div style="margin-top:20px;display:none;">
                    <textarea id="txtComment" class="txtComment" placeholder="Comment (optional)" data-bind="value : Comment" style="padding:4px; font-family:Verdana;font-size:13px;width:300px;resize:none; height:80px;border:1px solid #A4A4A4; border-radius:2px 2px;"></textarea>
                </div>
            </div>
            <!--/ko-->
        </div>
        <div style="clear: both;"></div>
        <div class="ButtonsArea">
            <div class="SubmitButton FloatRight Disabled" id="btnSubmit" data-bind="event: { click: SubmitClick }">
                <div>Submit</div>
            </div>
            <!--ko if:ShowSkipButton-->
            <div class="BackButton FloatRight" data-bind="event: { click: SkipClick }">
                <div>skip</div>
            </div>
            <!--/ko-->
        </div>
    </div>
    <!--/ko-->
</script>

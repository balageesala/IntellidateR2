<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_myprofilecriteria.ascx.cs" Inherits="IntellidateR1Web.web.ko.template_myprofilecriteria" %>
<script type="text/html" id="template_myprofilecriteria">
    <div style="width: 100%; min-height: 32px; border-bottom: 1px solid #95746D;display:inline-block;">
        <div style="float: left; width: 68px; padding: 4px;text-align:center;">
            <!--ko ifnot:AllowAssigningPoints-->
            <input type="text" style="width: 42px;" disabled="disabled" />
            <!--/ko-->
            <!--ko if:AllowAssigningPoints-->
            <input type="text" style="width: 42px;" class="points" data-bind="value: UserAssignedPoints, attr: {'data-criteriaid': _id}" maxlength="5" required="required" />
            <!--/ko-->
        </div>
        <div class="editCriteria" style="float: left; cursor:pointer; width: 200px; padding: 6px; text-align: center; font-size: 14px;" data-bind="text: CriteriaName, attr: { 'data-url': CriteriaEditUrl }" data-width="920" data-height="620"></div>
        <div class="editCriteria" style="float: left; cursor:pointer; width: 300px; padding: 4px; text-align: center; font-size: 13px;" data-bind="text: MyAnswer, attr: { 'data-url': CriteriaEditUrl }" data-width="920" data-height="620"></div>
        <div class="editCriteria" style="float: left; cursor:pointer; width: 300px; padding: 4px; text-align: center; font-size: 13px;" data-bind="text: AcceptableAnswers, attr: { 'data-url': CriteriaEditUrl }" data-width="920" data-height="620"></div>
        <div class="editCriteria" style="float: left; cursor:pointer; width: 300px; padding: 4px; text-align: center; font-size: 13px;" data-bind="text: UnacceptableAnswers, attr: { 'data-url': CriteriaEditUrl }" data-width="920" data-height="620" ></div>
    </div>
    <div style="clear:both;"></div>
</script>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_myprofilewritten.ascx.cs" Inherits="IntellidateR1Web.web.ko.template_myprofilewritten" %>


<script type="text/html" id="template_myprofilewritten">
    <div class="divprofile-temp">
        <input  type="text" class="txt-area txtPriority" data-bind="value: Priority, valueUpdate: 'keyup', attr: { 'data-questionid': QuestionId, 'data-priority': OldPriority }, event: { keyup: ValidateNumber, blur: UpDatePriority }" placeholder="0">
    </div>
    <div class="wrritten-title" data-bind="text: GetQuestion"></div>
    <!--ko ifnot:ShowEdit -->
    <div class="divwrittenbg" data-bind="event: { click: ShowEditBox }">
        <p data-bind="html: AnswerHtml"></p>
    </div>
    <!--/ko-->
    <!--ko if:ShowEdit -->
    <div  class="divwrittenbg">
        <textarea class="txtarea-edit profileAnswer" style="resize:none;" data-bind="event: { keyup: ValidateMaxAnswerLength }, attr: { 'data-questionid': QuestionId, 'maxlength': MaxAnswerLength }"></textarea>
        <div class="divbuttons">
            <input type="button" class="DbuttonSS" data-bind="event: { click: SaveEdit }, value: SubmitText" />
            <button class="DbuttonBK" data-bind="event: { click: CancelEdit }">Cancel</button>
        </div>
    </div>
    <!--/ko-->
</script>
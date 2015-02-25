<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_profilewritten.ascx.cs" Inherits="IntellidateR1Web.web.ko.template_profilewritten" %>

<script type="text/html" id="template_profilewritten">
    <div class="divprofile-temp">
        <div style="margin-left:42px;margin-bottom: 6px;">
            &nbsp;
        </div>
        <div class="wrritten-title" data-bind="text: GetQuestion"></div>
        <div class="divwrittenbg" style="cursor:auto;">
            <p style="cursor:auto;" data-bind="html: AnswerHtml"></p>
        </div>
    </div>
</script>

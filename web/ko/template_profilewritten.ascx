<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_profilewritten.ascx.cs" Inherits="IntelliWebR1.web.ko.template_profilewritten" %>

<script type="text/html" id="template_profilewritten">
    <div>
        <h3 class="wrritten-title" data-bind="text: GetQuestion"></h3>
        <p  data-bind="html: AnswerHtml"></p>
        <a style="cursor: pointer;" class="discuss">Discuss</a>
        <span class="clear"></span>
    </div>
</script>

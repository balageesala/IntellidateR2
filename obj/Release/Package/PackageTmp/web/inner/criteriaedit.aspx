<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="criteriaedit.aspx.cs" Inherits="IntellidateR1Web.web.inner.criteriaedit" %>
<%@ Register Src="~/web/ko/template_criteriaedit.ascx" TagPrefix="uc1" TagName="template_criteriaedit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/knockout/knockout-3.0.0.js" type="text/javascript"></script>
    <asp:Literal ID="ltScripts" runat="server"></asp:Literal>
    <style>
        body {
            margin: 0px;
            font-family: Verdana;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div style="display:inline-block; width: 920px; min-height: 620px; max-height:620px; background-color: #F4F4F4; border-radius: 4px 4px; border: 1px solid #C3C3C3">
        <div style="height: 30px;text-align:right;margin-right: 6px;cursor:pointer;" id="btnClose">
            <img src="../images/close.png" />
        </div>
        <div style="display:inline-block; margin: 30px; margin-top: 0px; width: 850px; min-height: 560px; max-height: 560px; overflow-y:scroll; background-color: #ffffff; border: 1px solid #C3C3C3; border-radius: 4px 4px;" id="divCriteriaEdit" data-bind="template: { name: 'template_criteriaedit', foreach: AllQuestions }">
        </div>
    </div>
    <uc1:template_criteriaedit runat="server" ID="template_criteriaedit" />
    
    <script type="text/javascript">
        $(document).ready(function () {
            $.getDATA(_SitePath + "api/GetCriteriaList", function (_return) {
                ko.applyBindings(new VMCriteriaQuestionList(_return), document.getElementById("divCriteriaEdit"));
                //alert(JSON.stringify(_return));
                DisplayQuestionEditable(_editCriteria);
            }, function () { });
            $("#btnClose").click(function () {
                window.parent.CloseIntelliWindow();
            });
        });
    </script>
    <script type="text/javascript">

        $(document).ready(function () {

            var SESSION_API = _SitePath + "api/SessionCheck";
            $.getDATA(SESSION_API, function (_IsOnline) {
                if (!_IsOnline) {
                    window.location.href = _SitePath + "web/LogOut";
                    window.parent.CloseIntelliWindow();
                } else {
                    return true;
                }
            }, function () { });

        });


</script>


</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="CriteriaPoints.aspx.cs" Inherits="IntellidateR1Web.web.CriteriaPoints" %>

<%@ Register Src="~/web/ko/template_criteriapoint.ascx" TagPrefix="uc1" TagName="template_criteriapoint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltScripts" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divContent"></div>
    <script type="text/javascript">
        $(document).ready(function () {
          
           LoadPoints();
        });

        function LoadPoints() {
            var _Url = _SitePath + "web/inner/criteriapoints";
            $("#divContent").load(_Url, function () {
                setTimeout(function () {
                        var _points = 0;
                        $('.points').each(function (i, obj) {
                            var _eachPoints = eval($(obj).val());
                            if (!isNaN(_eachPoints)) {
                                _points = eval(_points + _eachPoints);


                            }
                        });
                        var _pointsLeft = eval(100 - _points);
                        _pointsLeft = parseFloat(_pointsLeft.toPrecision(12));
                        $("#txtPointsLeft").val(_pointsLeft);
                        if (_pointsLeft == 0) {
                            EnableButton("#btnSubmit");
                        }
                    }, 3000);
            });
        }
    </script>
</asp:Content>

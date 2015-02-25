<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="SubscribeNow.aspx.cs" Inherits="IntellidateR1Web.web.SubscribeNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <label>
            <input type="radio" name="radiogroup" value="1" />Top subcription 17$ per mounth
        </label>
    </div>
    <div>
        <label>
            <input type="radio" name="radiogroup" value="2" />Basic subcription 11$ per mounth
        </label>
    </div>
    <div>
        <select id="ddlMounths">
            <option value="0">Select Mounths</option>
            <option value="1">One mounth</option>
            <option value="2">Two mounths</option>
            <option value="3">Three mounths</option>
            <option value="4">Four mounths</option>
            <option value="5">Five mounths</option>
            <option value="6">Six mounths</option>
        </select>
    </div>
    <div>
        <input type="button" value="Pay" id="btnPay" />
    </div>
    <div id="divMessage"></div>
    <script type="text/javascript">

        $(document).ready(function () {

            $("#btnPay").click(function () {
                var _SelectedValue = $("input[name=radiogroup]:checked").val();
                var _SelectedMounths = $("#ddlMounths").val();
                var _checkRadioButton = $("input[name=radiogroup]:checked").length;
                if (_checkRadioButton > 0 && _SelectedMounths != "0") {
                    $("#divMessage").html("");
                    var _IntelliUrl = _SitePath + "web/inner/confirmsubscription?type=" + _SelectedValue + "&mounth=" + _SelectedMounths;
                    SetUrlIntelliWindow(_IntelliUrl, 640, 330);
                } else {
                    if (_checkRadioButton == 0) {
                        $("#divMessage").html("Plese select subscription type.");
                    } if (_SelectedMounths == "0") {
                        $("#divMessage").html("Plese select subscription mounths.");
                    }
                }
            });

            });
    </script>


</asp:Content>

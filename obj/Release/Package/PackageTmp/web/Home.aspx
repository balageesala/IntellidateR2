<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IntellidateR1Web.web.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divHome">
        <div class="divWhiteBox">
            &nbsp;
        </div>
        <div class="divHomeBlockBox">
        </div>
    </div>
    <script>
        $(document).ready(function () {
            var _noCacheParam = jQuery.now();

            var _Url = _SitePath + "web/inner/profilecompletion?nocache=" + _noCacheParam;
            $(".divHomeBlockBox").load(_Url, function () {

            });

            _Url = _SitePath + "web/inner/todaymatch?nocache=" + _noCacheParam;
            $(".divWhiteBox").load(_Url, function () {

            });
        })

        
    </script>



</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="ProfileView.aspx.cs" Inherits="IntellidateR1Web.web.ProfileView" %>

<%@ Register Src="~/web/uc/viewedmemenu.ascx" TagPrefix="uc1" TagName="viewedmemenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float: left; width: 100%; padding: 10px;">
        <div style="float: left; width: 100%; font-size: large; font-weight: bold; margin-top: -38px;">Who viewed me profiles </div>
        <asp:Repeater ID="rptViewdProfiles" runat="server">
            <ItemTemplate>
                <div style="float: left; width:150px; margin-left: 4px;">
                    <div style="float: left; width: 150px; border: 1px solid #ccc; text-align: center; padding-bottom: 4px; margin-top: 4px;">
                        <div id="divDate" runat="server" style="float: left; width: 150px; text-align: center; margin-top: 4px; font-weight: bold; font-family: Arial"></div>
                        <img id="imgProfile" runat="server" class="profileViewed" style="width: 140px; height: 140px; cursor: pointer; margin: 0 auto; border: 1px solid #000; border-radius: 6px 6px;" tabindex="0" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div id="divEmptyMessage" runat="server" visible="false"></div>
    </div>

   <script type="text/javascript">

       $(document).ready(function () {

           $(".profileViewed").click(function () {
               var _getUrl = $(this).attr("alt");
               window.location.href = _getUrl;
           });

       });


   </script>



</asp:Content>

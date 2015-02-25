<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="IntellidateR1Web.web.Profile" %>

<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>
<%@ Register Src="~/web/uc/profilemenu.ascx" TagPrefix="uc1" TagName="profilemenu" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="ltJScripts" runat="server"></asp:Literal>
    <div class="divmyprofile">
        <div class="divWhiteBox">
            <div style="float: left; width: 100%; height: 140px;">
                <div id="divPassPort">
                    <uc1:passport runat="server" ID="passport" />
                </div>

                <div id="divLoadCriteriaMatchp" style="margin: 0 auto; width: 96px;">
                </div>

                <div id="divLoadProfileMatchp" style="margin: 0 auto; width: 96px;">
                </div>

            </div>


            <uc1:profilemenu runat="server" ID="profilemenu" />
            
            <div style="border-top: 0px solid #ccc; float: left; width: 168%; margin-top: -10px; height: 2px;">&nbsp; </div>

            <div id="divOtherProfileContainer" class="divOtherProfileContainer">
               
            </div>

             <div id="divOtherProfilePhotos" class="divOtherProfilePhotos">
               
            </div>

             <div id="divOtherProfileCriteria" class="divOtherProfileCriteria">
               
            </div>
             <div id="divOtherProfileQuestions" class="divOtherProfileQuestions">
               
            </div>
        </div>
        <div class="divBlockBox">
            &nbsp;
        </div>
    </div>

</asp:Content>

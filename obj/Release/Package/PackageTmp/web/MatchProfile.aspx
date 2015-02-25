<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="MatchProfile.aspx.cs" Inherits="IntellidateR1Web.web.MatchProfile" %>

<%@ Register Src="~/web/uc/matchprofilemenu.ascx" TagPrefix="uc1" TagName="matchprofilemenu" %>
<%@ Register Src="~/web/uc/otheruserpic.ascx" TagPrefix="uc1" TagName="otheruserpic" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <asp:Literal ID="ltJScripts" runat="server"></asp:Literal>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="divOtherProfilePic" style="float:left;width:100%;margin-top:-50px;">
        <uc1:otheruserpic runat="server" id="otheruserpic" />
    </div>
    <uc1:matchprofilemenu runat="server" id="matchprofilemenu" />

    <div id="divMatchWritten">


    </div>

    <div id="divMatchPhotos">


    </div>
</asp:Content>

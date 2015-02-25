<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadControl.aspx.cs" Inherits="IntellidateR1Web.web.service.LoadControl" %>
<%@ OutputCache VaryByParam="ouid" Duration="100000" %>
<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>
<uc1:passport runat="server" ID="passport" />

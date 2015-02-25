<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="messagesmenu.ascx.cs" Inherits="IntelliWebR1.web.uc.messagesmenu" %>
<asp:Literal ID="ltScripts" runat="server"></asp:Literal>

<div class="messageMenu">
 <ul>   
        <li id="liReceived" class="linarmal">Received</li>
        <li id="liFiltered" class="linarmal">Filtered</li>
        <li id="liSentBox" class="linarmal">Sent</li>
        <li id="liInstantMessage" class="linarmal">Chats</li>
        <li id="liTrash" class="linarmal">Trash</li>
   </ul>
</div>
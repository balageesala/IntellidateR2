<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="iconsmenu.ascx.cs" Inherits="IntellidateR1Web.web.uc.iconsmenu" %>


<asp:Literal ID="ltScripts" runat="server"></asp:Literal>


<div class="divicon-group" style="margin-top:-18px;margin-right:10px;">  
    <div style="float:left;"> 
        <img src="images/messageicon.png" id="imgCompose" style="width:25px;cursor:pointer;" title="Compose" />
    </div>
     <div style="float:left;margin-left:8px;" class="divChatimg"> 
        <img src="images/messageicon.png"  id="imgChat" style="width:25px;cursor:pointer;" title="Chat" />
    </div>
    
    <div style="float:left;margin-left:8px;"> 
        <img src="images/messageicon.png"  id="imgBlock" style="width:25px;cursor:pointer;" title="Black this user from contacting you" />
    </div>

      <div style="float:left;margin-left:8px;margin-right:4px;"> 
        <img src="images/messageicon.png"  id="imgReport" style="width:25px;cursor:pointer;" title="Report this profile" />
      </div>
    <div style="float:left;"> 
        <img src="images/messageicon.png" id="imgCompatibilityReport" style="width:25px;cursor:pointer;" title="Download Compatibility report" />
    </div>


</div>
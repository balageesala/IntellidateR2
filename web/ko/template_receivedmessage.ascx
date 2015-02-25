<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_receivedmessage.ascx.cs" Inherits="IntelliWebR1.web.ko.template_receivedmessage" %>
<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>

<script type="text/html" id="template_receivedmessage">

<div style="float:right;margin-top:-42px;margin-right:10px;">
    <!-- ko ifnot: IsDeleteAll -->
    <input type="button" value="DELETE" class="deletebtnenable" data-bind="click: DeleteSelected" />
    <!-- /ko -->
</div>
<div class="divoverallmsgs">
    <div class="divmsgheader">
        <div class="divmsgcol1">
            <div class="divpadding16"><input type="checkbox" data-bind="checked: SelectAll"  />   </div>
        </div>
        <div class="divmsgcol2">
            <div class="divpadding16">Message</div>
        </div>
        <div class="divmsgcol3">
            <div class="divpadding16">Time</div>
        </div>
    </div>
    <div class="divmsgheaderborder" ></div>

    <div  data-bind="foreach: AllRicivedSnapshots" >   
        <div  class="divrecivedrow"> 
    <div class="divcheckbox"><input type="checkbox"   data-bind="checked: Selected" />  </div>
    <div class="divmsguser">
            <div class="divmsguserbox InoxloadUrl" style="width:340px;height:120px;" data-bind="attr: { id: PassportID, 'data-loadurl': LoadPassportHtml }">  
                 &nbsp;
            </div>
        </div>
    <div class="dionmsgtext">
            <div class="margin4 RecivedConversation" data-bind="html: LastConversation().SmallMessage, attr: { 'data-conv': UserID }"> </div>
        </div>
    <div class="divmsgtime">
            <div class="divtimetext"  data-bind="text: LastConversation().SentTimeString"  ></div>
        </div>
    <div class="divmsgdelrow">
            <div class="divmsgdelicon">
                <img src="images/del-icon.png" data-bind="click: DeleteConversation" />
            </div>
        </div>
            </div>
    </div>
    </div>
</script>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_chatmessage.ascx.cs" Inherits="IntelliWebR1.web.ko.template_chatmessage" %>



<script type="text/html" id="template_chatmessage">
   
    <div style="float: right; margin-top: -42px; margin-right: 10px;">
        <!-- ko ifnot: IsDeleteAll -->
        <input type="button" value="DELETE" class="deletebtnenable" data-bind="click: DeleteSelected" />
        <!-- /ko -->
    </div>
    <div class="divoverallmsgs">
    <div class="divchatheader">
        <div class="divchatcol1">
          <div class="margin4">  <input type="checkbox"  data-bind="checked: SelectAll" /></div>
        </div>
        <div class="divchatcol2">
            &nbsp;
        </div>
        <div class="divchatcol3">
           Message
        </div>
        <div class="divchatcol4">
           Time
        </div>
        <div class="divchatcol5">
            &nbsp;
        </div>
    </div>
    <div class="divmsgheaderborder"></div>

   <div  data-bind="foreach: AllSnapshots">
       <div class="divchatrow">
            <div class="divchatcol1">
          <div class="margin4">  <input type="checkbox" data-bind="checked: Selected" /></div>
        </div>
        <div class="divchatcol2">
            <div class="divmsguserbox loadUrl" style="width: 340px; height: 120px;" data-bind="attr: { id: PassportID, 'data-loadurl': LoadPassportHtml }">
                        &nbsp;
             </div>
        </div>
        <div class="divchatcol3">
          <div class="ViewChatConversation" data-bind="html: LastConversation().SmallMessage, attr: { 'data-conv': UserID }"></div>
        </div>
        <div class="divchatcol4">
           <div class="divtimetext" data-bind="text: LastConversation().SentTimeString"></div>
        </div>
        <div class="divchatcol5">
            <div class="margin4"> <img src="images/del-icon.png" data-bind="click: DeleteConversation" /></div>
        </div>
    </div>
       </div>
        
</div>
</script>

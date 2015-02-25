<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_sentmessage.ascx.cs" Inherits="IntellidateR1Web.web.ko.template_sentmessage" %>
<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>



<script type="text/html" id="template_sentmessage">

    <div style="float: right; margin-top: -42px; margin-right: 10px;">
        <!-- ko ifnot: IsDeleteAll -->
        <input type="button" value="DELETE" class="deletebtnenable" data-bind="click: DeleteSelected" />
        <!-- /ko -->
    </div>

    <div class="divoverallmsgs">
        <div class="divSentmsgheader">
            <div class="divsentcol1">
                <div class="margin4">
                    <input type="checkbox" data-bind="checked: SelectAll" />
                </div>
            </div>
            <div class="divsentcol2">
                &nbsp;
            </div>
            <div class="divsentcol3">
                Message
            </div>
            <div class="divsentcol4">
                Time/Date
            </div>
            <div class="divsentcol5">
                Read
            </div>
            <div class="divsentcol6">
                Deleted
            </div>
            <div class="divsentcol7">
                &nbsp;
            </div>
        </div>
        <div class="divmsgheaderborder"></div>
        <div data-bind="foreach: AllSnapshots">
            <div class="divsentrow">

                <div class="divsentcol1">
                    <div class="margin4">
                        <input type="checkbox" data-bind="checked: Selected" />
                    </div>
                </div>
                <div class="divsentcol2 loadUrl" style="width:340px;height:110px;" data-bind="attr: { id: PassportID, 'data-loadurl': LoadPassportHtml }">&nbsp;</div>
                <div class="divsentcol3 ViewSentConversation" data-bind="html: LastConversation().SmallMessage, attr: { 'data-conv': UserID }">
                </div>
                <div class="divsentcol4" data-bind="text: LastConversation().SentTimeString">
                </div>
                <div class="divsentcol5" data-bind="text: LastConversation().SeenTimeString">
                </div>
        
                <div class="divsentcol6" data-bind="text: LastConversation().RecipientDeletedString">
                  
                </div>
                 

                <div class="divsentcol7">
                    <div class="margin4">
                        <img src="images/del-icon.png" data-bind="click: DeleteConversation" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="template_filteredmessage.ascx.cs" Inherits="IntelliWebR1.web.ko.template_filteredmessage" %>
<%@ Register Src="~/web/uc/passport.ascx" TagPrefix="uc1" TagName="passport" %>

<script type="text/html" id="template_filteredmsgs">

    <div style="float: right; margin-top: -42px; margin-right: 10px;">
        <!-- ko ifnot: IsDeleteAll -->
        <input type="button" value="DELETE" class="deletebtnenable" data-bind="click: DeleteSelected" />
        <!-- /ko -->
    </div>

    <div class="divoverallmsgs">
        <div class="divfilterheader">
            <div class="divfiltercol1">
                <div class="margin4">
                    <input type="checkbox" data-bind="checked: SelectAll" />
                </div>
            </div>
            <div class="divfiltercol2">
                &nbsp;
            </div>
            <div class="divfiltercol3">
                Filtered for
            </div>
            <div class="divfiltercol4">
                Message
            </div>
            <div class="divfiltercol5">
                Time Received
            </div>
            <div class="divfiltercol6">
                &nbsp;
            </div>
        </div>
        <div class="divmsgheaderborder"></div>
        <div data-bind="foreach: AllSnapshots">
            <div class="divfilterrow">
                <div class="divfiltercol1">
                    <div class="margin4">
                        <input type="checkbox" data-bind="checked: Selected" />
                    </div>
                </div>
                <div class="divfiltercol2 loadUrl" style="width:340px;height:110px;" data-bind="attr: { id: PassportID, 'data-loadurl': LoadPassportHtml }">
                  &nbsp;
                </div>
                <div class="divfiltercol3" data-bind="text: FilterName ">
                </div>
                <div class="divfiltercol4 ViewConversation" data-bind="html: LastConversation().SmallMessage, attr: { 'data-conv': UserID }">
                </div>
                <div class="divfiltercol5"  data-bind="text: LastConversation().SentTimeString">
                    
                </div>
                <div class="divfiltercol6">
                    <img src="images/del-icon.png" data-bind="click: DeleteConversation" />
                </div>
            </div>
        </div>
    </div>
</script>

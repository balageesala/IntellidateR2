

function VMSentConversationSnapShot(_snap) {
    var self = this;
    self.UserID = ko.observable(_snap.UserID);
    self.LastConversation = ko.observable(_snap.LastConversation);
    self.Selected = ko.observable(false);

    self.PassportID = ko.computed(function () {
        return "passport_" + self.UserID();
    }, this);

    self.LoadPassportHtml = ko.computed(function () {
        var _loadUrl = _SitePath + "web/service/LoadControl?c=PASSPORT&ouid=" + self.UserID();
        return _loadUrl;
    }, this);
}

function VMSentConversationSnapShotList(_snaplist) {
    var self = this;
    self.AllSnapshots = ko.observableArray();
    for (var i = 0; i < _snaplist.length; i++) {
        self.AllSnapshots.push(new VMSentConversationSnapShot(_snaplist[i]));
    }

    IsDeleteAll = ko.computed({
        read: function () {
            var item = ko.utils.arrayFirst(self.AllSnapshots(), function (item) {
                return item.Selected();
            });
            return item == null;
        },
        write: function (value) {
            ko.utils.arrayForEach(self.AllSnapshots(), function (person) {
                person.Selected(value);
            });
        }
    });



    SelectAll = ko.computed({
        read: function () {
            var item = ko.utils.arrayFirst(self.AllSnapshots(), function (item) {
                return !item.Selected();
            });
            return item == null;
        },
        write: function (value) {
            ko.utils.arrayForEach(self.AllSnapshots(), function (person) {
                person.Selected(value);
            });
        }
    });

    RebindDATA = function () {
        var _GetSentAPI = _SitePath + "api/SentBox";
        $.getDATA(_GetSentAPI, function (_data) {
            if (_data.length != 0) {
                RemoveAndReBindSent(_data);
            } else {
                $("#divSentMsgs").html("No messages found.");
                $("#divSentMsgs").addClass("nomessagesdiv");
            }
        }, function () { });
    }


    RemoveAndReBindSent = function (_data) {
        self.AllSnapshots.removeAll();
        for (var i = 0; i < _data.length; i++) {
            self.AllSnapshots.push(new VMSentConversationSnapShot(_data[i]));
        }
    }


    DeleteConversation = function (_data) {
        CheckIsUserOnline();
        var m_RecipientID = _data.LastConversation().RecipientID;
        var _GetSentAPI = _SitePath + "api/SentBox/" + m_RecipientID;

        $.getDATA(_GetSentAPI, function (_ret) {
            if (_ret) {
                self.AllSnapshots.remove(_data);
            }
        });
    }


    DeleteSelected = function () {
        CheckIsUserOnline();
        //get selected message conversations
        for (var i = 0; i < self.AllSnapshots().length; i++) {
            if (self.AllSnapshots()[i].Selected()) {
                var m_RecipientID = self.AllSnapshots()[i].UserID();
                var _GetSentAPI = _SitePath + "api/SentBox/" + m_RecipientID;
                $.getDATA(_GetSentAPI, function (_ret) {
                    RebindDATA();
                });
            }
        }
    }

}



var _GetSentAPI = _SitePath + "api/SentBox";
$(document).ready(function () {
    $.getDATA(_GetSentAPI, function (_data) {
        if (_data == null || _data.length == 0) {
            $("#divSentMsgs").html("No messages found.");
            $("#divSentMsgs").addClass("nomessagesdiv");
            $(".divloadingimg").hide();
        } else {
            ko.applyBindings(new VMSentConversationSnapShotList(_data), document.getElementById("divSentMsgs"));
            setTimeout(function () {
                $(".loadUrl").each(function (_pos, _obj) {
                    var _loadUrl = $(_obj).data("loadurl");
                    $(_obj).load(_loadUrl, function () {
                    });
                });
            }, 500);
            $(".divloadingimg").hide();
            $(".ViewSentConversation").click(function () {
                window.location.href = "ConversationView?page=inbox&&id=" + $(this).data("conv");
            });


        }
    }, function () { });
});
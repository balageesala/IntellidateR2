
function VMRecivedConversationSnapShot(_snap) {
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

function VMRecivedConversationSnapShotList(_snaplist) {
    var self = this;
    self.AllRicivedSnapshots = ko.observableArray();
    for (var i = 0; i < _snaplist.length; i++) {
        self.AllRicivedSnapshots.push(new VMRecivedConversationSnapShot(_snaplist[i]));
    }


    IsDeleteAll = ko.computed({
        read: function () {
            var item = ko.utils.arrayFirst(self.AllRicivedSnapshots(), function (item) {
                return item.Selected();
            });
            return item == null;
        },
        write: function (value) {
            ko.utils.arrayForEach(self.AllRicivedSnapshots(), function (person) {
                person.Selected(value);
            });
        }
    });



    SelectAll = ko.computed({
        read: function () {
            var item = ko.utils.arrayFirst(self.AllRicivedSnapshots(), function (item) {
                return !item.Selected();
            });
            return item == null;
        },
        write: function (value) {
            ko.utils.arrayForEach(self.AllRicivedSnapshots(), function (person) {
                person.Selected(value);
            });
        }
    });



    RemoveAndReBindInBox = function (_data) {
        self.AllRicivedSnapshots.removeAll();
        for (var i = 0; i < _data.length; i++) {
            self.AllRicivedSnapshots.push(new VMConversationSnapShot(_data[i]));
        }
    }

    RebindDATA = function () {
        var _GetInboxAPI = _SitePath + "api/Inbox";
        $.getDATA(_GetInboxAPI, function (_data) {
            if (_data.length != 0) {
                RemoveAndReBindInBox(_data);
            } else {
                $("#divRecivedMsgs").html("No messages found.");
                $("#divRecivedMsgs").addClass("nomessagesdiv");
            }
        }, function () { });
    }



    DeleteConversation = function (_data) {
        CheckIsUserOnline();
        var m_SenderId = _data.UserID();
        //alert(m_SenderId);

        var _GetInboxAPI = _SitePath + "api/Inbox/" + m_SenderId;

        $.getDATA(_GetInboxAPI, function (_ret) {
            if (_ret) {
                self.AllRicivedSnapshots.remove(_data);
            }
        });
    };

  

    DeleteSelected = function () {

        //get selected message conversations
        CheckIsUserOnline();

        for (var i = 0; i < self.AllRicivedSnapshots().length; i++) {
            if (self.AllRicivedSnapshots()[i].Selected()) {
                var m_SenderId = self.AllRicivedSnapshots()[i].UserID();
                var _GetInboxAPI = _SitePath + "api/Inbox/" + m_SenderId;
                $.getDATA(_GetInboxAPI, function (_ret) {
                    RebindDATA();
                });
            }
        } 
    }


};


var _GetInboxAPI = _SitePath + "api/Inbox";
$(document).ready(function () {
    $.getDATA(_GetInboxAPI, function (_data) {
        if (_data == null || _data.length == 0) {
            $("#divRecivedMsgs").html("No messages found.");
            $("#divRecivedMsgs").addClass("nomessagesdiv");
            $(".divloadingimg").hide();
        } else {
            // alert(JSON.stringify(_data));
            ko.applyBindings(new VMRecivedConversationSnapShotList(_data), document.getElementById("divRecivedMsgs"));
            setTimeout(function () {
                $(".InoxloadUrl").each(function (_pos, _obj) {
                    var _loadUrl = $(_obj).data("loadurl");
                    $(_obj).load(_loadUrl, function () {
                    });
                });
            }, 500);
            $(".divloadingimg").hide();
            $(".RecivedConversation").click(function () {
                window.location.href = "ConversationView?page=inbox&id=" + $(this).data("conv");
            });
        }
    }, function () { });
});

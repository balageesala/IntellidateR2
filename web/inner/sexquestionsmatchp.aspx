<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sexquestionsmatchp.aspx.cs" Inherits="IntelliWebR1.web.inner.sexquestionsmatchp" %>

<div id="divProfileMatchp" style="float: left; width: 750px;" runat="server">

    <div style="float: left; width: 150px; height: 120px;">
        <div style="padding: 2px 2px; padding-bottom: 1px; height: 100px; width: 100px; border: 1px solid #ccc; border-radius: 2px 2px;">
            <img id="OtherSexUserPic" runat="server" style="width: 99px; height: 99px;" />
        </div>
        <div>
            <div style="text-align: center; width: 99px;" id="lblOtherUserName" runat="server"></div>
        </div>
    </div>

    <div id="divSexQuestions" runat="server" visible="false">
        <div style="float: left; width: 140px; height: 120px;" id="DivPhilosophyTheyMatchYou" runat="server">
            <div>
                <img id="imgSexPhilosophyTheyMatchYou" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>They match you</div>
        </div>
         <div style="float: left; width: 140px; height: 120px;">
            &nbsp;
        </div>
        <div style="float: left; width: 140px; height: 120px;" id="DivPhilosophyOverall" runat="server" >
            <div>
                <img id="imgSexPhilosophyTotal" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>Questions match</div>
        </div>
          <div style="float: left; width: 140px; height: 120px;">
            &nbsp;
        </div>
    </div>
    <div style="float: left; width: 150px; height: 120px;">
        <div style="padding: 2px 2px; padding-bottom: 1px; height: 100px; width: 100px; border: 1px solid #ccc; border-radius: 2px 2px;">
            <img id="UserSexPic" runat="server" style="width: 99px; height: 99px;cursor:pointer;" class="goMyProfile" />
        </div>
        <div>
            <div style="text-align: center; width: 99px;" id="lblThisUserName" runat="server"></div>
        </div>
    </div>

       <script type="text/javascript">
           $(document).ready(function () {
               $(".goMyProfile").click(function () {
                   window.location.href = _SitePath + "web/MyProfile";
               });
           });
    </script>

</div>

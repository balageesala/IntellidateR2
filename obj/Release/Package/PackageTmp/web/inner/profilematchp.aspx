<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profilematchp.aspx.cs" Inherits="IntellidateR1Web.web.inner.profilematchp" %>



<div id="divProfileMatchp" style="float:left;width:750px;" runat="server">
    
      <div style="float: left; width: 150px; height: 120px;">
            <div style="padding: 2px 2px;padding-bottom: 1px;height:100px;width:100px;border:1px solid #ccc;border-radius:2px 2px;">
                <img id="OtherUserPic" runat="server" style="width: 99px; height: 99px;" />
            </div>
           <div> <div style="text-align:center;width: 99px;" id="DivOtherUserNane" runat="server"></div></div>
         </div>

    <div id="divCriteria" runat="server" visible="false">
        
        <div style="float: left; width: 140px; height: 120px;" id="DivCriteriaTheyMatchYou" runat="server">
            <div>
                <img id="imgCriteriaTheyMatchYou" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>They match you</div>
        </div>

        <div style="float: left; width: 140px; height: 120px;">
            <div>
                <img id="imgCriteriaTotal" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>Criteria match</div>
        </div>


        <div style="float: left; width: 140px; height: 120px;" id="DivCriteriaYouMatchThem" runat="server">
            <div>
                <img id="imgCriteriaYouMatchThem" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>You match them</div>
        </div>
        </div>


    <div id="divQuestions" runat="server" visible="false">
        
        <div style="float: left; width: 140px; height: 120px;" id="DivPhilosophyTheyMatchYou"  runat="server" >
            <div>
                <img id="imgPhilosophyTheyMatchYou" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>They match you</div>
        </div>
        <div style="float: left; width: 140px; height: 120px;">
            <div>
                <img id="imgPhilosophyTotal" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>Questions match</div>
        </div>
        <div style="float: left; width: 140px; height: 120px;" id="DivPhilosophyYouMatchThem" runat="server">
            <div>
                <img id="imgPhilosophyYouMatchThem" runat="server" style="width: 99px; height: 99px;" />
            </div>
            <div>You match them</div>
        </div>
    </div>

   

    <div style="float: left; width: 150px; height: 120px;">
            <div style="padding: 2px 2px;padding-bottom: 1px;height:100px;width:100px;border:1px solid #ccc;border-radius:2px 2px;">
                <img id="UserPic" runat="server" style="width: 99px; height: 99px;cursor:pointer;" class="goMyProfile"/>
            </div>
         <div> <div style="text-align:center;width: 99px;" id="DivThisUserName" runat="server"></div></div>
        </div>


    <script type="text/javascript">
        $(document).ready(function () {
            $(".goMyProfile").click(function () {
                window.location.href = _SitePath + "web/MyProfile";
            });
        });
    </script>


</div>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profilecriteria.aspx.cs" Inherits="IntellidateR1Web.web.inner.profilecriteria" %>

<asp:literal id="ltScripts" runat="server"></asp:literal>
<style type="text/css">
    .paddingcss td {
        padding-top: 6px;
        padding-left: 6px;
    }

    .paddingleft td {
        padding-left: 6px;
    }
</style>

<div style="margin: 0px;float:left;">
    <div style="font-family: Tahoma; font-size: 20px; display: none; font-weight: bold; margin-top: 30px;" id="lblMutualMatch" runat="server"></div>

    <div style="font-family: Tahoma; font-size: 14px; margin-top: 10px;width:1362px;">
        <asp:datagrid id="dgCriteriaTable" runat="server" cellpadding="4" cellspacing="4" gridlines="Horizontal" bordercolor="#CCCCCC" borderwidth="2" headerstyle-backcolor="#C1272D" headerstyle-forecolor="White" headerstyle-font-bold="false" autogeneratecolumns="false" onitemdatabound="dgCriteriaTable_ItemDataBound" width="94%">
            <HeaderStyle Height="22" Font-Bold="false" VerticalAlign="Bottom" CssClass="paddingcss" />
            <ItemStyle Height="20" CssClass="paddingleft" />
            <Columns>
                <asp:BoundColumn DataField="CriteriaName" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left"  HeaderText="Category" ItemStyle-Width="200"></asp:BoundColumn>
                <asp:BoundColumn DataField="UserPreferences" HeaderText="My Preference" ></asp:BoundColumn>
                <asp:BoundColumn DataField="OtherUserValue" HeaderText="Their Answer(s)" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ></asp:BoundColumn>
                <asp:BoundColumn DataField="PointsAssigned" HeaderText="Points Assigned" ItemStyle-Width="250" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left"></asp:BoundColumn>
                <asp:BoundColumn DataField="PointsAwarded" HeaderText="Points Earned" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HasAllPreferencesSelected" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="ShowMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="CriteriaType" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HideCriteriaInUserMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HideCriteriaInOtherUserMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HideOtherUserValue" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="MatchSuccessText" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="MatchFailText" Visible="false"></asp:BoundColumn>
            </Columns>
        </asp:datagrid>
    </div>
    <div style="font-family: Tahoma; font-size: 14px; margin-top: 20px;width:1362px;">
        <asp:datagrid id="dgOtherUserCriteriaTable" runat="server" cellpadding="4" cellspacing="4" gridlines="Horizontal" bordercolor="#CCCCCC" borderwidth="2" headerstyle-backcolor="#C1272D" headerstyle-forecolor="White" headerstyle-font-bold="false" autogeneratecolumns="false" onitemdatabound="dgOtherUserCriteriaTable_ItemDataBound" width="94%">
            <HeaderStyle Height="22" Font-Bold="false" CssClass="paddingcss" />
            <AlternatingItemStyle BackColor="White" Height="20" />
            <ItemStyle Height="20" CssClass="paddingleft" />
            <Columns>
                <asp:BoundColumn DataField="CriteriaName" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="211" HeaderText="Category"></asp:BoundColumn>
                <asp:BoundColumn DataField="UserPreferences" HeaderText="Their Preference" ItemStyle-Width="446" ></asp:BoundColumn>
                <asp:BoundColumn DataField="OtherUserValue" HeaderText="My Answer(s)" ItemStyle-Width="160" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ></asp:BoundColumn>
                <asp:BoundColumn DataField="PointsAssigned" HeaderText=" " ItemStyle-Width="260" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left"></asp:BoundColumn>
                <asp:BoundColumn DataField="PointsAwarded" HeaderText="Points Earned" Visible="true" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="210" ></asp:BoundColumn>
                <asp:BoundColumn DataField="IsMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HasAllPreferencesSelected" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="ShowMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HideCriteriaInUserMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HideCriteriaInOtherUserMatch" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="HideOtherUserValue" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="Criteria_id" Visible="false"></asp:BoundColumn>
            </Columns>
        </asp:datagrid>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function () {

        CheckIsUserOnline();

    });


</script>
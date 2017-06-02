<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="DotNetNuke.Modules.MyDNN.View" %>

<style>
    .CommandButton {
        background: #2c95b5 none repeat scroll 0 0;
        border: medium none;
        color: #ffffff;
        cursor: pointer;
        display: inline-block;
        font-size: 17px;
        font-weight: bold;
        line-height: normal;
        padding: 8px 10px;
        text-decoration: none;
        margin: 5px;
    }
</style>
<asp:Repeater ID="rptItemList" runat="server" OnItemDataBound="rptItemListOnItemDataBound" OnItemCommand="rptItemListOnItemCommand">
    <HeaderTemplate>
        <div>
    </HeaderTemplate>
    <ItemTemplate>
        <div style="border: 3px solid; margin:10px;padding:10px;width:100%" >
            <div style="float:left;width:80%">
                <h3>
                    <asp:Label ID="lblitemTitle" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"ItemTitle").ToString() %>' />
                </h3>
            </div>
            <div  style="float:left;width:20%">
                <asp:Panel ID="pnlAdmin" runat="server" Visible="false">
                    <asp:HyperLink ID="lnkEdit" CssClass="CommandButton" runat="server" ResourceKey="EditItem.Text" Visible="false" Enabled="false" />
                    <asp:LinkButton ID="lnkDelete" runat="server" CssClass="CommandButton" ResourceKey="DeleteItem.Text" Visible="false" Enabled="false" CommandName="Delete" />
                </asp:Panel>
            </div>
        </div>

    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>

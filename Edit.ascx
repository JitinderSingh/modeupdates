<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edit.ascx.cs" Inherits="DotNetNuke.Modules.MyDNN.Edit" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnForm dnnEditBasicSettings" id="dnnEditBasicSettings">
    <div class="dnnFormExpandContent dnnRight "><a href=""><%=LocalizeString("ExpandAll")%></a></div>

    <h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead dnnClear">
        <a href="" class="dnnSectionExpanded">
            <%=LocalizeString("BasicSettings")%></a></h2>
    <fieldset>
       <div class="dnnFormItem">
            <dnn:label ID="lblIcon" runat="server" />
            <asp:DropDownList ID="ddlIcon" runat="server">
                <asp:ListItem Value="0">Select Icon</asp:ListItem>
                <asp:ListItem Value="1">fa fa-pencil</asp:ListItem>
                <asp:ListItem Value="2">fa fa-Book</asp:ListItem>
                <asp:ListItem Value="3">fa fa-test</asp:ListItem>
                <asp:ListItem Value="4">fa fa-compass</asp:ListItem>
            </asp:DropDownList>

        </div>
        <div class="dnnFormItem">
            <dnn:label ID="lblTitle" runat="server" />
            <asp:TextBox ID="txtTitle" runat="server" />
        </div>
        <div class="dnnFormItem">
            <dnn:label ID="lblContent" runat="server" />
            <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Rows="5" Columns="20" />
        </div>
        <div class="dnnFormItem">
            <dnn:label ID="lblReadMore" runat="server" /> 
              <asp:CheckBox ID="CheckBoxReadMore" runat="server" CausesValidation="True" AutoPostBack="True" />
             <asp:TextBox ID="txtReadMore" runat="server" />
        </div>
    </fieldset>
</div>
<asp:LinkButton ID="btnSubmit" runat="server"
    OnClick="btnSubmit_Click" resourcekey="btnSubmit" CssClass="dnnPrimaryAction" />
<asp:LinkButton ID="btnCancel" runat="server"
    OnClick="btnCancel_Click" resourcekey="btnCancel" CssClass="dnnSecondaryAction" />

<script type="text/javascript">
    /*globals jQuery, window, Sys */
    (function ($, Sys) {
        function dnnEditBasicSettings() {
            $('#dnnEditBasicSettings').dnnPanels();
            $('#dnnEditBasicSettings .dnnFormExpandContent a').dnnExpandAll({ expandText: '<%=Localization.GetString("ExpandAll", LocalResourceFile)%>', collapseText: '<%=Localization.GetString("CollapseAll", LocalResourceFile)%>', targetArea: '#dnnEditBasicSettings' });
        }

        $(document).ready(function () {
            dnnEditBasicSettings();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
                dnnEditBasicSettings();
            });
        });

    }(jQuery, window.Sys));
</script>

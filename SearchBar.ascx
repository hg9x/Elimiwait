<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SearchBar.ascx.cs" Inherits="Controls_SearchBar" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
<asp:TextBox ID="txtSearchBox" CssClass="nowatermark" runat="server" Height="20px" ></asp:TextBox>
<asp:TextBoxWatermarkExtender ID="wtrSearchBox" WatermarkCssClass="watermark" WatermarkText="Search restaurants" TargetControlID="txtSearchBox" runat="server">
</asp:TextBoxWatermarkExtender>
<asp:Button ID="cmdSearch" runat="server" Text="Search" 
    onclick="cmdSearch_Click" Height="25px" CausesValidation="false" />

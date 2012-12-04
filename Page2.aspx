<%@ Page Title="" Language="C#" MasterPageFile="~/FirstTwo.master" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2a" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="centerme">
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="121px" 
        HorizontalAlign="Center" EnableTheming="True" ViewStateMode="Disabled" 
            Width="275px" CssClass="centerme" DefaultButton="Submit">
        <asp:Label ID="Label1" CssClass="labeltext" runat="server" Text="Label">Select a City</asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
            style="margin-left: 0px; margin-bottom: 0px" Width="200px" 
            Font-Size="Small">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">LOGAN, UT</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" BackColor="#666666" ForeColor="White" 
            Height="22px" onclick="Button1_Click" Text="SUBMIT" Width="89px" />
    </asp:Panel>
    </div>
</asp:Content>


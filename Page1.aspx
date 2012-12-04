<%@ Page Title="" Language="C#" MasterPageFile="~/FirstTwo.master" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1a" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="centerme">
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="121px" 
        HorizontalAlign="Center" EnableTheming="True" ViewStateMode="Disabled" 
            Width="275px" CssClass="centerme" DefaultButton="Submit">
        <asp:Label ID="Label1" CssClass="labeltext" runat="server" Text="Label">Enter Your Email Address</asp:Label>
        <asp:TextBox ID="EmailAddress" runat="server" BorderStyle="Solid" Height="29px" 
            Width="162px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" BackColor="#666666" ForeColor="White" 
            Height="22px" onclick="Button1_Click" Text="SUBMIT" Width="89px" />
    </asp:Panel>
    </div>
</asp:Content>


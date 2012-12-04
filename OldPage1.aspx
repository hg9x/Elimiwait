<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OldPage1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 300px;
            height: 235px;
        }
    </style>
</head>
<body background="images/background.png">
    <form id="form1" runat="server">
    
    <div style="text-align:center">
    <!--Insert LOGO here-->
        <br />
        <br />
        <br />
        <br />
        </div>

    <div align="center" style="height: 56px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Elimi-wait"></asp:Label>
    
    </div>
    <!--Enter your email address box-->
    <p>
        &nbsp;</p>
    
    <center>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="121px" 
        HorizontalAlign="Center" style="margin-left: 0px" Width="260px" 
        ScrollBars="Vertical" EnableTheming="True" ViewStateMode="Disabled">
        <b>Enter Your </b>
        <br />
        <b>Email Address</b><br />
        <asp:TextBox ID="EmailAddress" runat="server" BorderStyle="Solid" Height="29px" 
            Width="162px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" BackColor="#666666" ForeColor="White" 
            Height="22px" onclick="Button1_Click" Text="SUBMIT" Width="89px" />
    </asp:Panel>
    </center>

    <center>
    <div style="text-align:center; width: 635px; margin-left: 177px; margin-top: 26px;">
    <!--Insert LOGO here-->
        <img alt="" src="images/Logo1.jpg" style="width: 200px; height: 300px" 
            align="left" /><img align="right" alt="" class="style1" src="images/food_steak.jpg" /></div>
    </center>
    </form>
</body>
</html>

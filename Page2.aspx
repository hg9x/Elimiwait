<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
    <asp:Panel ID="Panel1" runat="server" Height="121px" HorizontalAlign="Center" 
        style="margin-left: 0px" Width="356px" BorderStyle="Solid">
        <b>&nbsp;Select a City</b><br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="margin-left: 0px; margin-bottom: 0px" Width="200px" 
            Font-Size="Small">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">LOGAN</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" BackColor="#666666" ForeColor="White" 
            Height="22px" onclick="Button1_Click" Text="SUBMIT" Width="89px" />
    </asp:Panel>
    </center>

    <p>
        <img align="right" alt="" class="style1" src="images/food_steak.jpg" /></p>
    
    <div style="text-align:center">
    <!--Insert LOGO here-->
        <img alt="" src="images/Logo1.jpg" style="width: 200px; height: 300px" 
            align="left" /></div>

    </form>
</body>
</html>

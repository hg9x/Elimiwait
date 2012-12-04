<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MainPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>

    <asp:Timer ID="Timer1" runat="server" Interval="20000" ontick="Timer1_Tick">
    </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
           <asp:DataList ID="DataList1" runat="server" DataKeyField="RestaurantID" 
           DataSourceID="SqlDataSource1" RepeatColumns="4" Width="850px" 
               RepeatDirection="Horizontal">
           <ItemTemplate>
               <div class="restbox">
                   <a href='DetailPage.aspx?id=<%# Eval("RestaurantID") %>'>
                   <img src='images/logo/<%# Eval("LogoImageName") %>' class="logocorners" height="150" width="200" /></a>
                   <asp:Label ID="TimeLabel" CssClass="timenumber" runat="server" Text='<%# Eval("WaitTime2People") %>' />
                   <asp:Label ID="MinuteLabel" CssClass="minutelabel" runat="server" Text=" Minutes" />
               </div>
           </ItemTemplate>
       </asp:DataList>

       </ContentTemplate>
    </asp:UpdatePanel>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
           SelectCommand="SELECT ri.RestaurantID, ri.LogoImageName, wt.WaitTime2People 
           FROM RestaurantImages AS ri INNER JOIN WaitTime AS wt ON wt.RestaurantID = ri.RestaurantID
ORDER BY wt.WaitTime2People;">
       </asp:SqlDataSource>
       
 
</asp:Content>

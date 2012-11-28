<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ByPartySize.aspx.cs" Inherits="ByPartySize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

       <asp:DataList ID="DataList1" runat="server" DataKeyField="RestaurantID" 
           DataSourceID="SqlDataSource1" RepeatColumns="4" Width="850px">
           <ItemTemplate>
               <div class="restbox">
                   <a href='DetailPage.aspx?id=<%# Eval("RestaurantID") %>'>
                   <img src='images/logo/<%# Eval("LogoImageName") %>' class="logocorners" height="150" width="200" /></a>
                   <asp:Label ID="TimeLabel" CssClass="timenumber" runat="server" Text='<%# Eval("WaitTime") %>' />
                   <asp:Label ID="MinuteLabel" CssClass="minutelabel" runat="server" Text=" Minutes" />
               </div>
           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
           SelectCommand="SELECT ri.RestaurantID, ri.LogoImageName, 
           CASE @WaitTime
                    WHEN 2 THEN WaitTime2People
                    WHEN 4 THEN WaitTime4People
                    WHEN 6 THEN WaitTime6orMorePeople
           END AS WaitTime
           FROM RestaurantImages AS ri INNER JOIN WaitTime AS wt ON wt.RestaurantID = ri.RestaurantID;">
           <SelectParameters>
               <asp:QueryStringParameter DefaultValue="2" Name="WaitTime" 
                   QueryStringField="party" />
           </SelectParameters>
       </asp:SqlDataSource>

</asp:Content>


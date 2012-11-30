<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ByType.aspx.cs" Inherits="ByType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

       <asp:DataList ID="DataList1" runat="server" DataKeyField="RestaurantID" 
           DataSourceID="SqlDataSource1" RepeatColumns="4" Width="850px" RepeatDirection="Horizontal">
           <ItemTemplate>
               <div class="restbox">
                   <a href='DetailPage.aspx?id=<%# Eval("RestaurantID") %>'>
                   <img src='images/logo/<%# Eval("LogoImageName") %>' class="logocorners" height="150" width="200" /></a>
                   <asp:Label ID="TimeLabel" CssClass="timenumber" runat="server" Text='<%# Eval("WaitTime2People") %>' />
                   <asp:Label ID="MinuteLabel" CssClass="minutelabel" runat="server" Text=" Minutes" />
               </div>
           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
           SelectCommand="SELECT ri.RestaurantID, ri.LogoImageName, wt.WaitTime2People 
           FROM RestaurantImages AS ri INNER JOIN WaitTime AS wt ON wt.RestaurantID = ri.RestaurantID
           WHERE ri.RestaurantID IN (
                        SELECT RestaurantID
                                  FROM RestaurantType
                                  WHERE RestaurantType = @RestaurantType)
ORDER BY wt.WaitTime2People;">
           <SelectParameters>
               <asp:QueryStringParameter Name="RestaurantType" QueryStringField="type" />
           </SelectParameters>
       </asp:SqlDataSource>

</asp:Content>


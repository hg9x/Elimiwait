<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ByPrice.aspx.cs" Inherits="ByPrice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<asp:DataList ID="DataList1" runat="server" DataKeyField="RestaurantID" 
           DataSourceID="SqlDataSource1" RepeatColumns="4" Width="850px" RepeatDirection="Horizontal">
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
           SelectCommand="
           SELECT r.RestaurantID, Name, StreetAddress, City, State, ZipCode, PhoneNumber, Description, PriceRange, PriceNumForSorting, ri.LogoImageName, w.WaitTime2People AS WaitTime
                FROM Restaurant$ AS r JOIN RestaurantImages AS ri ON (r.RestaurantID = ri.RestaurantID) JOIN WaitTime AS w ON (w.RestaurantID = ri.RestaurantID)
                WHERE PriceNumForSorting = @Price;">
           <SelectParameters>
               <asp:QueryStringParameter DefaultValue="1" Name="Price" 
                   QueryStringField="price" />
           </SelectParameters>
       </asp:SqlDataSource>

</asp:Content>


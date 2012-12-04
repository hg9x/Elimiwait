<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Coupons.aspx.cs" Inherits="Coupons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
           <asp:DataList ID="DataList1" runat="server" DataKeyField="RestaurantID" 
           DataSourceID="SqlDataSource1" RepeatColumns="4" Width="850px" 
               RepeatDirection="Horizontal">
           <ItemTemplate>
               <div class="restbox">
                   <img src='images/Coupons/<%# Eval("CouponImageName") %>' class="logocorners" height="150" width="200" /></a>
               </div>
           </ItemTemplate>
       </asp:DataList>

       </ContentTemplate>
    </asp:UpdatePanel>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
           SelectCommand=
           "
           SELECT RestaurantID, CouponID, CouponImageName 
                FROM Coupons
           ">
       </asp:SqlDataSource>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DetailPage.aspx.cs" Inherits="DetailPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #663300;
        }
        .style2
        {
            color: #993300;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            height: 20px;
            text-align: center;
        }
        .style5
        {
            height: 20px;
            width: 269px;
            text-align: center;
        }
        .style6
        {
            width: 269px;
        }
        .style7
        {
            height: 20px;
            width: 239px;
        }
        .style8
        {
            width: 239px;
        }
        .style9
        {
            color: #000000;
        }
        .style10
        {
            width: 308px;
            height: 77px;
        }
        .style11
        {
            width: 104px;
            height: 60px;
        }
        .style12
        {
            width: 333px;
            height: 77px;
        }
        .style13
        {
            color: #6600CC;
        }
        .style14
        {
            height: 77px;
        }
        .style15
        {
            font-size: 20pt;
            color: #216C2A;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
             SelectCommand="SELECT wt.RestaurantID, wt.WaitTime2People, wt.WaitTime4People, wt.WaitTime6orMorePeople, ri.MenuImageName 
          FROM WaitTime AS wt INNER JOIN RestaurantImages AS ri ON ri.RestaurantID = wt.RestaurantID 
          WHERE (wt.RestaurantID = @RestaurantID)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                     Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
             SelectCommand="SELECT [SundayStart],[SundayEnd], [MondayStart], [MondayEnd], [TuesdayStart], [TuesdayEnd], [WednesdayStart], [SaturdayEnd], [SaturdayStart], [FridayEnd], [FridayStart], [ThursdayEnd], [ThursdayStart], [WednesdayEnd], rh.RestaurantID, LogoImageName
        FROM RestaurantHours AS rh INNER JOIN RestaurantImages AS ri ON (rh.RestaurantID = ri.RestaurantID)
        WHERE rh.RestaurantID = @RestaurantID;">
             <SelectParameters>
                 <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                     Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
             SelectCommand="SELECT RestaurantID, Name, StreetAddress, City, State, ZipCode, PhoneNumber, Description, PriceRange
                  FROM Restaurant$ 
                  WHERE (RestaurantID = @RestaurantID);">
                <SelectParameters>
                    <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                        Type="String" />
                </SelectParameters>
         </asp:SqlDataSource>

         <asp:FormView ID="FormView2" runat="server" DataKeyNames="RestaurantID" 
             DataSourceID="SqlDataSource2">
            <ItemTemplate>
                 <table style="width: 100%;">
                     <tr>
                         <td class="style5">
                             <br />

                         </td>
                         <td class="style7"><!-- Picture of restaurant -->
                             &nbsp;
                              <img src='images/logo/<%# Eval("LogoImageName") %>' width="355px" />
                         </td>
                         <td class="style4" style="padding-left:20px;">
                             &nbsp;<br />
                             <br />
                             <br />
                             <br class="style9" />&nbsp;<strong><span class="style9">HOURS</span><br class="style9" />
                             <span class="style9">Monday: <asp:Label ID="MondayStartLabel" runat="server" Text='<%# Eval("MondayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="MondayEndLabel" runat="server" Text='<%# Eval("MondayEnd", "{0:t}") %>' /></span>
                             <br class="style9" />
                             <span class="style9">Tuesday: <asp:Label ID="TuesdayStartLabel" runat="server" Text='<%# Eval("TuesdayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="TuesdayEndLabel" runat="server" Text='<%# Eval("TuesdayEnd", "{0:t}") %>' /></span>
                             <br class="style9" />
                             <span class="style9">Wednesday: <asp:Label ID="WednesdayStartLabel" runat="server" Text='<%# Eval("WednesdayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="WednesdayEndLabel" runat="server" Text='<%# Eval("WednesdayEnd", "{0:t}") %>' /></span>
                             <br class="style9" />
                             <span class="style9">Thursday: <asp:Label ID="ThursdayStartLabel" runat="server" Text='<%# Eval("ThursdayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="ThursdayEndLabel" runat="server" Text='<%# Eval("ThursdayEnd", "{0:t}") %>' /></span>
                             <br class="style9" />
                             <span class="style9">Friday: <asp:Label ID="FridayStartLabel" runat="server" Text='<%# Eval("FridayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="FridayEndLabel" runat="server" Text='<%# Eval("FridayEnd", "{0:t}") %>' /></span>
                             <br class="style9" />
                             <span class="style9">Saturday: <asp:Label ID="SaturdayStartLabel" runat="server" Text='<%# Eval("SaturdayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="SaturdayEndLabel" runat="server" Text='<%# Eval("SaturdayEnd", "{0:t}") %>' /></span>
                             <br class="style9" />
                             <span class="style9">Sunday: <asp:Label ID="SundayStartLabel" runat="server" Text='<%# Eval("SundayStart", "{0:t}") %>' /> - 
                             <asp:Label ID="SundayEndLabel" runat="server" Text='<%# Eval("SundayEnd", "{0:t}") %>' /></span></strong><br />
                         </td>
                     </tr>
                     <tr>
                         <td class="style6">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="style6">
                             &nbsp;</td>
                         <td class="style8">
                             &nbsp;
                         </td>
                         <td>
                             &nbsp;
                         </td>
                     </tr>
                 </table>
            </ItemTemplate>
        </asp:FormView>


         <asp:FormView ID="FormView1" runat="server" DataKeyNames="RestaurantID" 
             DataSourceID="SqlDataSource1">
             <ItemTemplate>
                <div class="style3">
                    <!-- Restaurant Description --> 
                    <h3>About us</h3>
                     <em><%# Eval("Name") %> - <%# Eval("Description") %></em>
                </div>

                <div class="style3">
                    <!-- Contact Info --> 
                    <table style="width: 100%;">
                        <tr>
                            <td class="style10">
                                <br />
                                <strong><span class="style2"><%# Eval("StreetAddress") %></span></strong>
                                <br class="style2" />
                                <span class="style2"><strong><%# Eval("City") %>, <%# Eval("State") %> <%# Eval("ZipCode") %></strong></span>
                                <br class="style2" />
                                <span class="style2"><strong><%# Eval("PhoneNumber") %> </strong></strong></span>
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td class="style14">
                                &nbsp;
                                <img alt="" class="style11" src="images/restaurants/dollarLogo.png" />
                                <strong><span class="style13">&nbsp; </span><span class="style15"><%# Eval("PriceRange") %> </span></strong>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
             </ItemTemplate>
         </asp:FormView>


         <asp:FormView ID="FormView3" runat="server" DataKeyNames="RestaurantID" 
             DataSourceID="SqlDataSource3" Width="936px">
            <ItemTemplate>
                <asp:HiddenField ID="HiddenField2" Value='<%# Eval("RestaurantID") %>' runat="server" />
                <div id="updatetimes">
                    <div class="timeflys">
                    2 people
                        <img src="images/2.jpg" /><br />
                        <asp:Label ID="Label1" runat="server" CssClass="timenumber" Text='<%# Eval("WaitTime2People") %>' /> Minutes
                    </div>
                    <div class="timeflys">
                    4 people
                        <img src="images/3.jpg" /><br />
                        <asp:Label ID="Label2" runat="server" CssClass="timenumber" Text='<%# Eval("WaitTime4People") %>' /> Minutes
                    </div>
                    <div class="timeflys">
                    Groups (4+)
                        <img src="images/G%20LOGO%202.jpg" width="125px" /><br />
                        <asp:Label ID="Label3" runat="server" CssClass="timenumber" Text='<%# Eval("WaitTime6orMorePeople") %>' /> Minutes

                    </div>
                </div>
                <div>
                    <h3 class="clearboth">Menu</h3>
                    <!-- Menu or picture of Menu -->
                    <img src='images/menu/<%# Eval("MenuImageName") %>' style="max-width:940px;" />
                </div>
            </ItemTemplate>
        </asp:FormView>

    <div id="reviews">
    <asp:FormView ID="FormView4" runat="server" DataKeyNames="RestaurantID" 
        DataSourceID="SqlDataSource4" DefaultMode="Insert" 
            oniteminserted="FormView4_ItemInserted">
        <InsertItemTemplate>
            <fieldset>
                <legend>Customer Reviews</legend>
                <ol>
                    <li><label for="ReviewerUserNameTextBox">Your Name:</label>
                    <asp:TextBox ID="ReviewerUserNameTextBox" runat="server" 
                        Text='<%# Bind("ReviewerUserName") %>' /></li>
                    <li><label for="ReviewTextTextBox">Review:</label>
                    <asp:TextBox ID="ReviewTextTextBox" runat="server" 
                        Text='<%# Bind("ReviewText") %>' TextMode="MultiLine" Width="258px"  /></li>
                    <li><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Submit" CssClass="updatebtn" /></li>
                </ol>
            </fieldset>
        </InsertItemTemplate>
    </asp:FormView>
    </div>    

    <asp:DataList ID="DataList1" CssClass="showreviews" runat="server" DataSourceID="SqlDataSource5">
        <ItemTemplate>
            <div class="clearright">
                By: <strong><asp:Label ID="ReviewUserNameLabel" runat="server" Text='<%# Eval("ReviewerUserName") %>' /></strong><br />
                <asp:Label ID="ReviewTextLabel" runat="server" Text='<%# Eval("ReviewText") %>' />
            </div>
        </ItemTemplate>
    </asp:DataList>


         <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
             ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
             SelectCommand="SELECT [ReviewText], [ReviewerUserName] FROM [CustomerReviews] WHERE ([RestaurantID] = @RestaurantID)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                     Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
    

     <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
        DeleteCommand="DELETE FROM [CustomerReviews] WHERE [RestaurantID] = @RestaurantID" 
        InsertCommand="INSERT INTO [CustomerReviews] ([RestaurantID], [ReviewText], [ReviewerUserName]) VALUES (@RestaurantID, @ReviewText, @ReviewerUserName)" 
        SelectCommand="SELECT [RestaurantID], [ReviewText], [ReviewerUserName] FROM [CustomerReviews] WHERE ([RestaurantID] = @RestaurantID)" 
        
             UpdateCommand="UPDATE [CustomerReviews] SET [ReviewText] = @ReviewText, [ReviewerUserName] = @ReviewerUserName WHERE [RestaurantID] = @RestaurantID">
         <DeleteParameters>
             <asp:Parameter Name="RestaurantID" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                 Type="Int32" />
             <asp:Parameter Name="ReviewText" Type="String" />
             <asp:Parameter Name="ReviewerUserName" Type="String" />
         </InsertParameters>
         <SelectParameters>
             <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                 Type="Int32" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="ReviewText" Type="String" />
             <asp:Parameter Name="ReviewerUserName" Type="String" />
             <asp:Parameter Name="RestaurantID" Type="Int32" />
         </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
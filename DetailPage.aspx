<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DetailPage.aspx.cs" Inherits="DetailPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #663300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div>
         <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
             AutoGenerateRows="False" DataKeyNames="RestaurantID" 
             DataSourceID="SqlDataSource1">
             <Fields>
                 <asp:BoundField DataField="RestaurantID" HeaderText="RestaurantID" 
                     ReadOnly="True" SortExpression="RestaurantID" />
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="StreetAddress" HeaderText="StreetAddress" 
                     SortExpression="StreetAddress" />
                 <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                 <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                     SortExpression="ZipCode" />
                 <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                     SortExpression="PhoneNumber" />
             </Fields>
         </asp:DetailsView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
             SelectCommand="SELECT * FROM [Restaurant] WHERE ([RestaurantID] = @RestaurantID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="RestaurantID" QueryStringField="id" 
                        Type="String" />
                </SelectParameters>
         </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <!-- Picture of restaurant -->
         <asp:HyperLink ID="HyperLink1" NavigateUrl="http://hamiltonssteakhouse.com/" 
             runat="server" Target="_blank"><img src="images/Detail/Logo.png" /></asp:HyperLink>
     </div>
         <div>
            <!-- Restaurant Description --> Hamiltons Steak & Seafood is Steakhouse restaurant in Logan, UT.
     </div>
     <div>
            <!-- Contact Info --> 
            <span class="style1"><strong>Hamilton's Steak & Seafood</strong></span>
            <br />
            <br />
            2427 North Main Street
            <br />
            Logan, UT 84321
            (435) 787-8450
            <br />
            <br />
            <br />
     </div>
     <div>
            <!-- Hours -->
            HOURS OF OPERATION 


            <br />
            Monday-Thursday: 11 am – 9 pm


            <br />
            Friday: 11 am – 10 pm

            <br />
            Saturday: 12 pm – 10 pm

            <br />
            Sunday: Closed

     </div>
    
     <div>
     <img src="images/1.jpg" />
     One Person
     <img src="images/2.jpg" />
     Two People
     <img src="images/3.jpg" />
     Three or Four People
     <img src="images/G%20LOGO.jpg" />
     Group and Party 
     </div>

     <div>
            <!-- Menu or picture of Menu -->
      
         <img src="images/Detail/Menu.png" />
     </div>
     <div>
            <!-- Restaurant Reviews --> Customer Reviews<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     </div>

</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TimeUpdate.aspx.cs" Inherits="Account_TimeUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Hello 
        <asp:LoginName ID="LoginName1" runat="server" />,
    </h2>
    <asp:HiddenField ID="HiddenField1" runat="server" />

    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="RestaurantID" DefaultMode="Edit">
        <EditItemTemplate>
            WaitTime2People:
            <asp:TextBox ID="WaitTime2PeopleTextBox" runat="server" 
                Text='<%# Bind("WaitTime2People") %>' />
            <br />
            WaitTime4People:
            <asp:TextBox ID="WaitTime4PeopleTextBox" runat="server" 
                Text='<%# Bind("WaitTime4People") %>' />
            <br />
            WaitTime6orMorePeople:
            <asp:TextBox ID="WaitTime6orMorePeopleTextBox" runat="server" 
                Text='<%# Bind("WaitTime6orMorePeople") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
        </EditItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
        SelectCommand="Elimiwait_GetWaitTime" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="ManagerUserName" 
                PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TimeUpdate.aspx.cs" Inherits="Account_TimeUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Welcome 
        <asp:LoginName ID="LoginName1" runat="server" />,
    </h2>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="RestaurantID" DefaultMode="Edit" Width="936px">
        <EditItemTemplate>
            <h3>Update Waiting Times for <%# Eval("Name") %>:</h3>
            
            <asp:HiddenField ID="HiddenField2" Value='<%# Eval("RestaurantID") %>' runat="server" />
            <div id="updatetimes">
                <div class="timeflys">
                2 people
                    <img src="../images/2.jpg" />
                    <asp:TextBox ID="TextBox1" runat="server" 
                        Text='<%# Bind("WaitTime2People") %>' Width="30px" />Minutes
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please enter a wait time for 2 people" Text="*"></asp:RequiredFieldValidator>
                </div>
                <div class="timeflys">
                4 people
                    <img src="../images/3.jpg" />
                    <asp:TextBox ID="TextBox2" runat="server" 
                        Text='<%# Bind("WaitTime4People") %>' Width="30px" />Minutes
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please enter a wait time for 4 people" Text="*"></asp:RequiredFieldValidator>
                </div>
                <div class="timeflys">
                Groups (4+)
                    <img src="../images/G%20LOGO%202.jpg" height="125px" width="125px" />
                    <asp:TextBox ID="TextBox3" runat="server" 
                        Text='<%# Bind("WaitTime6orMorePeople") %>' Width="30px" />Minutes
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Please enter a wait time for a group of 4+" Text="*"></asp:RequiredFieldValidator>
                </div>
            </div>
            
            <div class="clearboth centerthis">
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" CssClass="updatebtn" />
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" ShowMessageBox="true" ShowSummary="false" runat="server" />
        </EditItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:elimiwaitfall2012ConnectionString %>" 
        SelectCommand="Elimiwait_GetWaitTime" SelectCommandType="StoredProcedure" 
        UpdateCommand="Elimiwait_UpdateWaitTime" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="ManagerUserName" 
                PropertyName="Value" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="WaitTime2People" Type="Int32" />
            <asp:Parameter Name="WaitTime4People" Type="Int32" />
            <asp:Parameter Name="WaitTime6orMorePeople" Type="Int32" />
            <asp:Parameter Name="RestaurantID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>


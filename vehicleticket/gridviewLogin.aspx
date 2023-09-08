<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridviewLogin.aspx.cs" Inherits="vehicleticket.gridviewLogin" %>



<form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Vehicle]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" InsertVisible="False" ReadOnly="True" SortExpression="VehicleID" />
            <asp:BoundField DataField="parkingspaceid" HeaderText="parkingspaceid" SortExpression="parkingspaceid" />
            <asp:BoundField DataField="VehicleNoPlate" HeaderText="VehicleNoPlate" SortExpression="VehicleNoPlate" />
            <asp:BoundField DataField="vehiclename" HeaderText="vehiclename" SortExpression="vehiclename" />
            <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" SortExpression="CreatedOn" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater1_ItemCommand">



    </asp:Repeater>


    <br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [adminlogin]"></asp:SqlDataSource>






  
    <div>  
        <asp:Repeater ID="RepeatInformation" runat="server" OnItemCommand="RepeatInformation_ItemCommand">  
            <HeaderTemplate>  
                <table class="tblcolor">  
                    <tr>  
                        <b>  
                            <td>  
                                 adminloginid  
                            </td>  
                            <td>  
                                username 
                            </td>  
                            <td>  
                               password  
                            </td>  
                        </b>  
                    </tr>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr >  
                    <td>  
                        <%#Eval("adminloginid")%>  
                    </td>  
                    <td>  
                       <%#Eval("username")%>  
                    </td>  
                    <td>  
                        <%#Eval("password")%>  
                    </td>  
                </tr>  
            </ItemTemplate>  
            <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                </tr>  
            </SeparatorTemplate>  
           
            <FooterTemplate>  
                <tr>  
                    <td>  
                        admin Records displayed  
                    </td>  
                </tr>  
                </table>  
            </FooterTemplate>  
        </asp:Repeater>  
    </div>  
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="Repeater2_ItemCommand">
    </asp:Repeater>

    <br />
    <br />


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ParkingTicket]" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
    </form>  

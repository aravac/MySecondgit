<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="OrderDetails.aspx.cs" Inherits="Admin_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr>
        <td align="left">
        
            <h2>
                Order Details:</h2>
        
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="FullName" HeaderText="FullName" 
                        SortExpression="FullName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="ShopName" HeaderText="ShopName" 
                        SortExpression="ShopName" />
                    <asp:BoundField DataField="DeliveryPlace" HeaderText="DeliveryPlace" 
                        SortExpression="DeliveryPlace" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                        SortExpression="MobileNo" />
                    <asp:BoundField DataField="OrderType" HeaderText="OrderType" 
                        SortExpression="OrderType" />
                    <asp:BoundField DataField="OrderItems" HeaderText="OrderItems" 
                        SortExpression="OrderItems" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                        SortExpression="OrderDate" />
                    <asp:BoundField DataField="DeliveryDate" HeaderText="DeliveryDate" 
                        SortExpression="DeliveryDate" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                        SortExpression="Amount" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CostBasedConnectionString %>" 
                
                SelectCommand="SELECT [FullName], [Address], [ShopName], [DeliveryPlace], [MobileNo], [OrderType], [OrderItems], [OrderDate], [DeliveryDate], [Amount] FROM [OrderDetails]">
            </asp:SqlDataSource>
            
        </td>
    </tr>
</table>

</asp:Content>


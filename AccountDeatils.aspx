<%@ Page Language="C#" MasterPageFile="~/Admin/BankHome.master" AutoEventWireup="true" CodeFile="AccountDeatils.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="100%">
    <tr>
        <td align="left">
            
            <h2>
                Account Details:</h2>
            
        </td>
    </tr>
    <tr>
        <td>
            
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                            GridLines="None" ondatabound="Page_Load">
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                    SortExpression="UserName" />
                                <asp:BoundField DataField="LoanId" HeaderText="LoanId" 
                                    SortExpression="LoanId" />
                                <asp:BoundField DataField="LoanType" HeaderText="LoanType" 
                                    SortExpression="LoanType" />
                                <asp:BoundField DataField="LoanDescription" HeaderText="LoanDescription" 
                                    SortExpression="LoanDescription" />
                                <asp:BoundField DataField="MaxLoanAmount" HeaderText="LoanAmount" 
                                    SortExpression="MaxLoanAmount" />
                                <asp:BoundField DataField="AccountAmount" HeaderText="AccountAmount" 
                                    SortExpression="AccountAmount" />
                                <asp:BoundField DataField="Occupation" HeaderText="Occupation" 
                                    SortExpression="Occupation" />
                            </Columns>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:CostBasedConnectionString %>" 
                            SelectCommand="SELECT [UserName], [LoanId], [LoanType], [LoanDescription], [MaxLoanAmount], [AccountAmount], [Occupation] FROM [BankDetails]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


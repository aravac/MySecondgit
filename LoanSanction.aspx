<%@ Page Language="C#" MasterPageFile="~/Admin/BankHome.master" AutoEventWireup="true" CodeFile="LoanSanction.aspx.cs" Inherits="Admin_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="1005">
    <tr>
        <td align="left" class="style1">
            
            <h2>
                Loan Sanction:</h2>
            
        </td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataKeyNames="AccountId" DataSourceID="SqlDataSource1" 
                            ForeColor="#333333" GridLines="None" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            onselectedindexchanging="GridView1_SelectedIndexChanging" 
                            ondatabinding="Page_Load">
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                    SortExpression="UserName" />
                                <asp:BoundField DataField="AccountId" HeaderText="AccountId" ReadOnly="True" 
                                    SortExpression="AccountId" />
                                <asp:BoundField DataField="LoanId" HeaderText="LoanId" 
                                    SortExpression="LoanId" />
                                <asp:BoundField DataField="MaxLoanAmount" HeaderText="Loan Amount" 
                                    SortExpression="MaxLoanAmount" />
                                <asp:BoundField DataField="AccountAmount" HeaderText="Account Amount" 
                                    SortExpression="AccountAmount" />
                                <asp:CommandField ShowSelectButton="True" />
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
                            SelectCommand="SELECT [UserName], [AccountId], [LoanId], [MaxLoanAmount], [AccountAmount] FROM [BankDetails]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    
                                    User Name:</td>
                                <td>
                                    
                                    <asp:TextBox ID="txt_Username" runat="server"></asp:TextBox>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                    Account Id:</td>
                                <td>
                                    
                                    <asp:TextBox ID="txt_AccountId" runat="server" style="height: 22px"></asp:TextBox>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                    Loan Id:</td>
                                <td>
                                    
                                    <asp:TextBox ID="txt_Loanid" runat="server"></asp:TextBox>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                    Loan Amount:</td>
                                <td>
                                    
                                    <asp:TextBox ID="txt_Loanamt" runat="server"></asp:TextBox>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                    Account Amount:</td>
                                <td>
                                    
                                    <asp:TextBox ID="txt_Accamount" runat="server"></asp:TextBox>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    
                                    <asp:Button ID="btn_Loan" runat="server" onclick="btn_Loan_Click" 
                                        Text="Loan Sanction" />
&nbsp;
                                    <asp:Button ID="btn_Clear" runat="server" onclick="btn_Clear_Click" 
                                        Text="Clear" Width="42%" />
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


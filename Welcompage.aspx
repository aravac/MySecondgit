<%@ Page Language="C#" MasterPageFile="~/Admin/BankHome.master" AutoEventWireup="true" CodeFile="Welcompage.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" align="center">
    <tr>
        <td align="left">
            
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Welcome to Admin"></asp:Label>
            
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:Image ID="Image2" runat="server" Height="403px" 
                ImageUrl="~/images/bank.jpg" Width="582px" />
            
        </td>
    </tr>
</table>
</asp:Content>


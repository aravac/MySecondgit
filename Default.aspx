<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr>
        <td align="left">
            
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Maroon" 
                Text="Welcome to Admin"></asp:Label>
            
        </td>
    </tr>
    <tr>
        <td>
        
            <asp:Image ID="Image2" runat="server" Height="283px" 
                ImageUrl="~/images/Admin.gif" Width="294px" />
        
        </td>
    </tr>
</table>
</asp:Content>


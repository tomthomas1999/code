
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="user_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 594px;
        }
    </style>
</head>
<body>
       
    <div class="container">
        <h1 align="center" >travel world</h1>
                    
        <img src="image/Bridge.jpg" alt="travel" style="height: 376px; width: 1343px" title="" />
                
        </div>

      </div>  
   
    <form id="form1" runat="server">
    <div>
        <a href="signup.aspx">signup.aspx</a>
    
        <table width="100%">
            <tr>
                <td colspan="2">sign in </td>
            </tr>
            <tr>
                <td class="auto-style1">phone number</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">confirm</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="signup" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="clear" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

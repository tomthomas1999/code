<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="user_signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
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
    
        <table class="auto-style1">
            <tr>
                <td>sign in</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>phnone number</td>
                <td>
                    <asp:TextBox ID="Txtp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>password</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="sign in" />
                    <asp:Button ID="Button2" runat="server" Text="clear" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

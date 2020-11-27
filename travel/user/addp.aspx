<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addp.aspx.cs" Inherits="addprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 184px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <marquee direction="up">   <h3 align="center">EDIT PROFILE</h3></marquee>
        <table width="50%" align="center" height="auto">
            <tr>
                <td class="auto-style1">First Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">House Name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Place</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Profile Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin-left: 40px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Clear" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

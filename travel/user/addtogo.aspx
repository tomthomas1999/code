<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addtogo.aspx.cs" Inherits="user_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="bottom: 434px; right: 441px; top: 100px; left: 269px; position: absolute; height: 247px; width: 634px">
    <form id="form1" runat="server">
    <marquee direction="left">  <h3>
        Add where to go ?</h3></marquee>
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Place"></asp:Label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add" align="" Height="52px" style="margin-left: 61px" Width="146px" OnClick="Button1_Click" />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Time"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
           

            <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
           

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhome1.aspx.cs" Inherits="user_userhome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2
        {
            width: 158px;
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
    
        <table style="width: 858px" align="center">
            <tr>
                <td><a href="userhome1.aspx" >HOME</a></td>
                <td>
                    <a href="addp.aspx">ADD PROFILE</a>
                </td>
                <td ><a href="profile.aspx">PROFILE</a></td>

                <td><a href="notification.aspx">NOTIFICATION</a> </td>
                <td><a href="addtogo.aspx">ADD TO GO</a></td>
                <td><a href="message.aspx">SEARCH</a></td>
                <td class="auto-style2"><a href="userhome.aspx" >LOG OUT</a></td>
            </tr>
        </table>
    
    </div>
        <div>


            <table width="50%" align="right" height="auto">
                <tr>
                  <td>  Chat BOX</td></tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                              <td>  <asp:Image ID="Image1" runat="server" Height="50px" Width="43px" ImageUrl='<%# Bind("im") %>' />
                                  <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                                </td>
                                 <td>  <asp:Button ID="Label3" runat="server" Visible="True" Text="message" PostBackUrl="~/user/chat.aspx" /></td>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                
            </table>


            </div>
    </form>
</body>
</html>

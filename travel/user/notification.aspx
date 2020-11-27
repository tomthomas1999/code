<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="user_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  >
            <Columns>
                 <asp:BoundField DataField="nid" HeaderText="nid" Visible="False" />
                <asp:BoundField DataField="place" HeaderText="place" />
                <asp:BoundField DataField="time" HeaderText="time" />
                <asp:BoundField DataField="date" HeaderText="time" />
                
                  <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Bind("nid") %>' OnCommand="LinkButton2_Command">Delete</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
        </asp:GridView>
    <a href="userhome1.aspx"><asp:PlaceHolder runat="server">back</asp:PlaceHolder></a>
    </div>
    </form>
</body>
</html>

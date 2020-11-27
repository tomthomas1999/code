<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="user_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </div>
    <div>
        &nbsp;<asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
         <ItemTemplate> 
        
           
                    <asp:Image ID="Image1" runat="server" Height="45px" Width="42px" /><br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="is delare go to "></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("time") %>'></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>' ></asp:Label>
              
 <a href="chat.aspx"> <image src="image/download.jfif" width="30px" height="30px"></a></image></a> 



            
              
       </ItemTemplate>
    </asp:DataList>
    </div>
    </form>
</body>
</html>

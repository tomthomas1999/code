<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="user_chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1
        {
            height: 130px;
            width: 422px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="50px" Width="43px" ImageUrl='<%# Bind("im") %>' />
                                  <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                                 <asp:Label ID="Label2" runat="server" Visible="false" Text='<%# Bind("phone") %>'></asp:Label>
        <asp:DataList ID="DataList1" runat="server">
             
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("chatvalue") %>'></asp:Label>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("datetime") %>'></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("chatvalue") %>'></asp:Label>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("datetime") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        <br />

        <p>
            To
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
       
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
           
       
        
        
        <asp:Button ID="Button1" runat="server" Text="Sent"  OnClick="Button1_Click"/>
        
        <a href="message.aspx"><asp:PlaceHolder runat="server">back</asp:PlaceHolder></a>
           
       
        
        
    <div>
    
    </div>
    </form>
</body>
</html>

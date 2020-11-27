<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="user_Default"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1
        {
            width: 129%;
            height: 516px;
            margin-left: 0px;
        }
        .auto-style5
        {
        }
        .auto-style6
        {
            width: 155px;
        }
        .auto-style7
        {
            width: 155px;
            height: 35px;
        }
        .auto-style8
        {
            width: 155px;
            height: 36px;
        }
        .auto-style13
        {
            width: 159px;
        }
        .auto-style14
        {
            width: 159px;
            height: 35px;
        }
        .auto-style15
        {
            width: 159px;
            height: 36px;
        }
    </style>
   
    </head>
<body>
     <form id="form1" runat="server">
    <div>
          
                    
        
         <asp:Panel runat="server">
                    
         <table align="center" style="height: 514px; width: 385px">
             <tr>
                 <td>
                     <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333"  RepeatDirection="Horizontal" >
                         <AlternatingItemStyle BackColor="White" />
                         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                         <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                         <ItemTemplate>
                             <br />
                             <table class="auto-style1">
                                 <tr>
                                    <td ><marquee direction="left">USER</marquee> </td>
                                     <td   class="auto-style5" colspan="2" align="center">
                                        &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
                                     <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageAlign="AbsMiddle"  ImageUrl='<%# Bind("im") %>' />
                                     </td>

                                 </tr>
                                
                                 <tr>
                                     <td class="auto-style6">&nbsp;FIRST NAME</td>
                                     <td class="auto-style13">
                                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style7">LAST NAME</td>
                                     <td class="auto-style14">
                                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style6">HOUSE NAME</td>
                                     <td class="auto-style13">
                                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("house") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style6">PLACE</td>
                                     <td class="auto-style13">
                                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("place") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style8">PHONE</td>
                                     <td class="auto-style15" >
                                         <asp:Label ID="Label5" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                                     </td>
                                 </tr> 
                                
                             </table>
                         </ItemTemplate>
                         <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                     </asp:DataList>
                 </td>
             </tr>
         </table>
           </div>
                  </asp:Panel>  
      </form>             
                    
</body>
</html>

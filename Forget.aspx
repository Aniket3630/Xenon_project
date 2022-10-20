<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget.aspx.cs" Inherits="Forget" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="forget.css" />
</head>
<body>
  <form id="form1" runat="server">
    <div >
    <div >
    <h1>Forget Password</h1>
    <asp:TextBox ID="TextBox1" CssClass="txtemail" runat="server"   placeholder="Username "  Height="30px" 
            Width="240px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" CssClass="txtpass" runat="server" placeholder="What is ur pet name"  Height="30px" 
            Width="240px" ></asp:TextBox>
        <br />
    <asp:Label ID="Label3" CssClass="lblpass" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit"  />
    <asp:Button ID="Button2" runat="server" Text="Cancel"  />
   </div> 
   </div></form>
</body>
</html>

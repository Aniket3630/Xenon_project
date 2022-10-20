<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />

</head>
<body>
<div class="loginbox" align="center">
<img src="b.png"  class="user"/>
<h2> Admin Login<h2/>
<form id="Form1" runat="server">
<asp:Label ID="Label1" text="Email" CssClass="lblemail" runat="server"
ForeColor="#006600" />
<asp:TextBox runat="server" CssClass="txtemail" Width="200px" 
    placeholder="enter email" ID="TextBox1" />
<asp:label ID="Label2" Text="Password" CssClass="lblpass" runat="server" ForeColor="#006600" />
<asp:TextBox runat="server" CssClass="txtpass" placeholder="*********" 
    TextMode="password" ID="TextBox2" />
<asp:Button ID="Button1" runat="server" Text="Login In" CssClass="btnsubmit" 
    onclick="Unnamed5_Click" />
<asp:LinkButton ID="LinkButton1" Text="Forgetpassword" CssClass="btnforget" 
    runat="server" onclick="LinkButton1_Click" />
</form>
</div>
   
</body>
</html>

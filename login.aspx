<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />

</head>
<body>
<div class="loginbox" align="center">
<img src="b.png"  class="user"/>
<h2> Get Started <h2/>
<form runat="server">
<asp:Label text="Email" CssClass="lblemail" runat="server"
ForeColor="#333300" />
<asp:TextBox runat="server" CssClass="txtemail" Width="200px" 
    placeholder="enter email" ID="TextBox1" />
<asp:label Text="Password" CssClass="lblpass" runat="server" 
    ForeColor="#333300" />
<asp:TextBox runat="server" CssClass="txtpass" placeholder="*********" 
    TextMode="password" ID="TextBox2" />
<asp:Button runat="server" Text="Login In" CssClass="btnsubmit" 
    onclick="Unnamed5_Click" />
<asp:LinkButton Text="Forgetpassword" CssClass="btnforget" runat="server" 
    onclick="Unnamed4_Click" />
</form>
</div>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:StudentMasterConnectionString %>" 
        SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
   
</body>
</html>

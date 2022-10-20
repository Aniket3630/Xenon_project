<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Selectlogin.aspx.cs" Inherits="Selectlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />

</head>
<body>
<div class="loginbox" align="center">
<img src="b.png"  class="user"/>
<h2> Selection Login<h2/>
<form id="Form1" runat="server">

<asp:Button ID="Button1" runat="server" Text="Admin Login" CssClass="btnsubmit" 
    onclick="Unnamed5_Click" />
    
<asp:Button ID="Button2" runat="server" Text="Member Login" 
    CssClass="btnsubmit" onclick="Button2_Click" 
    />

</form>
</div>
   
</body>
</html>

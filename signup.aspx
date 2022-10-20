<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .txtemail
        {}
        .txtfirst
        {
            margin-top: 0px;
        }
    </style>
</head>
<body>
<div class="signupbox" align="center">
<h2> Sign In </h2>
<form id="form1" runat="server">
<br/>
<br/>
<br/>

<br/>
<asp:Label ID="Label1" Text="First name" CssClass="lblfirst" runat ="server" ForeColor="#006600" />
<br />
<asp:TextBox ID="TextBox1" runat="server" CssClass="txtfirst" Width="200px" placeholder="enter first name" />
<br />
<br />
<asp:Label ID="Label2" Text="Last name" CssClass="lbllast" runat="server" ForeColor="#006600" />

<br />
<br />
<asp:TextBox ID="TextBox5" runat="server" CssClass="txtfirst" Width="200px" 
    placeholder="enter last name" Height="20px"></asp:TextBox>
<br />
<br />
<asp:Label ID="label3" runat="server" CssClass="lblemail" Text="Email" ForeColor="#006600" />
<br />
<asp:TextBox ID="TextBox3" runat="server" CssClass="txtemail" Width="200px" 
    placeholder="enter email" Height="22px" />
<br />
<br />
<br />
<asp:Label ID="label4" runat="server" CssClass="lblpass" Text="Password" ForeColor="#006600" />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:StudentMasterConnectionString %>" 
    SelectCommand="SELECT * FROM [Table2]"></asp:SqlDataSource>
<asp:TextBox ID="TextBox4" runat="server" CssClass="txtpass" Width="200px" 
    placeholder="enter password" />
<br />
<asp:Label ID="Label5" runat="server" Text="Security" CssClass="lblpass"  ForeColor="#006600"></asp:Label>
<br />
<asp:TextBox ID="TextBox6" runat="server"  CssClass="txtfirst" Width="200px" placeholder="enter pet name"></asp:TextBox>
<br />
<asp:Button ID="Button1" Text="Sign Up" CssClass="btnsubmit" runat="server" 
    Width="200px" OneClick="Button1_Click" Height="37px" 
    onclick="Button1_Click" />
</form>
    
</body>
</html>

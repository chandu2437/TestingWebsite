<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <br />
        <div>
            <p>New User?</p><asp:HyperLink runat="server" NavigateUrl="~/CreateUser.aspx" Text="Click Here"></asp:HyperLink>
        </div>
    </form>
</body>
</html>

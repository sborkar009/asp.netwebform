<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="vehicleticket.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      .auto-style{
          text-align:center;
          font-size:30px;

      }
      
        table
        {
            margin:auto;
                width:300px;
                border:10px black ridge

        }
        .auto-style1 {
            width: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td class="auto-style" colspan="2">Admin Login</td>
                </tr>
                <tr>
                    <td class="auto-style2">username</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="username" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="password" runat="server" OnTextChanged="password_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" Width="51px" style="height: 26px" />
                        <asp:Label ID="errorlable" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

    
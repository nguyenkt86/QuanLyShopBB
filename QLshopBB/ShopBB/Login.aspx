<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ShopBB_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div{
            width:450px;
            margin:50px auto;
            font-family:Arial;
            background-color:#00ff90;
            color:#ff6a00;
            background-repeat:no-repeat;
            -moz-border-radius:50px;
            -webkit-border-radius: 50px;
        }
        table{
            width:382px;
            margin:auto;
            height: 245px;
        }
        .btn{
            text-align:center;
            margin:auto;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            
        }
        #txtPassword, #txtUsername{
            -moz-border-radius-bottomright: 10px;
            -webkit-border-bottom-right-radius: 5px;
            width:200px;
        }
        .tieude {
            font-weight:bold;
            font-family:Arial, Helvetica, sans-serif;
            font-size:50px;
            line-height:100px;
        }
        .logo{
           font-size:15px;
           float:left;
           line-height:100px;
           margin-right:0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2" align="center" class="tieude">
                    <asp:Label ID="Label3" runat="server" Text="ĐĂNG NHẬP"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="Label1" runat="server" Text="TÊN ĐĂNG NHẬP:"></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="MẬT KHẨU:"></asp:Label></td>
                <td>    <asp:TextBox ID="txtPassword" type="password" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button class="btn" ID="btnLogin" runat="server"  OnClick="btnLogin_Click" Text="Đăng nhập" Height="42px" Width="121px" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>


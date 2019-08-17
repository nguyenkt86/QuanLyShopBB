<%@ Page Title="" Language="C#" MasterPageFile="~/ShopBB/Admin.master" AutoEventWireup="true" CodeFile="Taikhoan.aspx.cs" Inherits="ShopBB_Taikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div  style="width:600px; margin:auto; ">
        <table style="height: 155px; width: 237px" align="center" >
            <tr>
                <td colspan="2" align="center">THÔNG TIN CÁ NHÂN&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 631px">Tên</td>
                <td >
                    <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 631px">Họ và tên đệm</td>
                <td  >
                    <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 631px">Email</td>
                <td  >
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 631px">Số điện thoại</td>
                <td  >
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 631px">Địa chỉ</td>
                <td  >
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 631px">&nbsp;</td>
                <td >
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Cập nhật" />
                </td>
            </tr>
            <tr>
                <td style="width: 631px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>


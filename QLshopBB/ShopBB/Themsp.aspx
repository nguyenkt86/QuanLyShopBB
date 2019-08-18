<%@ Page Title="" Language="C#" MasterPageFile="~/ShopBB/Admin.master" AutoEventWireup="true" CodeFile="Themsp.aspx.cs" Inherits="ShopBB_Themsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width:600px; margin:auto">
        <tr>
            <td colspan="2" align="center">THÊM SẢN PHẨM</td>
        </tr>
        <tr>
            <td style="width: 311px">Mã sản phẩm</td>
            <td>
                <asp:TextBox ID="txtMasp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 311px">Tên sản phẩm</td>
            <td>
                <asp:TextBox ID="txtTensp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 311px">Hình ảnh</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 311px">Đơn vị tính</td>
            <td>
                <asp:TextBox ID="txtDvt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 311px">Số lượng</td>
            <td>
                <asp:TextBox ID="txtSoluong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 311px">Đơn giá</td>
            <td>
                <asp:TextBox ID="txtDongia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 311px">Mã loại</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MALOAI" DataValueField="MALOAI">
                    <asp:ListItem Value="1">Quần</asp:ListItem>
                    <asp:ListItem Value="2">Áo</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopBBConnectionString %>" SelectCommand="SELECT [MALOAI] FROM [LOAISANPHAM]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm sản phẩm" />
                <asp:Label ID="lblThongbao2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>


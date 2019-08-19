<%@ Page Title="" Language="C#" MasterPageFile="~/ShopBB/Admin.master" AutoEventWireup="true" CodeFile="Themsp.aspx.cs" Inherits="ShopBB_Themsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width:600px; margin:auto">
        <tr>
            <td colspan="2" align="center">THÊM SẢN PHẨM</td>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px">Mã sản phẩm</td>
            <td style="width: 133px">
                <asp:TextBox ID="txtMasp" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMasp" ErrorMessage="Chưa điền mã sp">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">Tên sản phẩm</td>
            <td style="width: 133px">
                <asp:TextBox ID="txtTensp" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTensp" ErrorMessage="Chưa điền tên sp">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; height: 20px;">Hình ảnh</td>
            <td style="height: 20px; width: 133px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="84px" />
            </td>
            <td style="height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Chưa chọn hình ảnh">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">Đơn vị tính</td>
            <td style="width: 133px">
                <asp:TextBox ID="txtDvt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Chưa điền đơn vị tính" ControlToValidate="txtDvt">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">Số lượng</td>
            <td style="width: 133px">
                <asp:TextBox ID="txtSoluong" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSoluong" ErrorMessage="Chưa điền số lượng">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSoluong" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">Đơn giá</td>
            <td style="width: 133px">
                <asp:TextBox ID="txtDongia" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDongia" ErrorMessage="Chưa điền đơn giá">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtDongia" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Double">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">Mã loại</td>
            <td style="width: 133px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MALOAI" DataValueField="MALOAI">
                    <asp:ListItem Value="1">Quần</asp:ListItem>
                    <asp:ListItem Value="2">Áo</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopBBConnectionString %>" SelectCommand="SELECT [MALOAI] FROM [LOAISANPHAM]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm sản phẩm" />
                <asp:Label ID="lblThongbao2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    
</asp:Content>


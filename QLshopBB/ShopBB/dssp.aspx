<%@ Page Title="" Language="C#" MasterPageFile="~/ShopBB/Admin.master" AutoEventWireup="true" CodeFile="dssp.aspx.cs" Inherits="ShopBB_dssp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class=" dssp" align="center">
        <asp:GridView ID="grv" runat="server" AutoGenerateColumns="False" DataKeyNames="MASP" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="grv_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="MASP" HeaderText="Mã SP" ReadOnly="True" SortExpression="MASP" />
                <asp:BoundField DataField="TENSP" HeaderText="Tên Sp" SortExpression="TENSP" />
                <asp:BoundField DataField="HINHANH" HeaderText="Hình ảnh" SortExpression="HINHANH" />
                <asp:BoundField DataField="DONVITINH" HeaderText="Đơn vị tính" SortExpression="DONVITINH" />
                <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" SortExpression="SOLUONG" />
                <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" SortExpression="DONGIA" />
                <asp:BoundField DataField="MALOAI" HeaderText="Mã loại" SortExpression="MALOAI" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnXoa" runat="server" CommandArgument='<%# Eval("MASP") %>' Text="Xóa"
                            OnClientClick='return confirm("Bạn có muốn xóa không?");' OnClick="btnXoa_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Button ID="btnXoa" runat="server" Text="Xóa" />
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopBBConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM]"></asp:SqlDataSource>
    </div>
    </asp:Content>


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShopBB_Themsp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Product sanpham = LayDuLieuTuForm();

        ProductDAO DAO = new ProductDAO();
        bool kiemtra = DAO.KiemTraMaSP(sanpham.masp);
        if (kiemtra)
        {
            lblThongbao2.Text = "Mã sản phẩm này đã tồn tại!";
        }
        else
        {
            bool result = DAO.insert(sanpham);
            if (result)
            {
                lblThongbao2.Text = "Thêm thành công!";
            }
        }
    }

    private Product LayDuLieuTuForm()
    {

        string masp = txtMasp.Text;
        string tensp = txtTensp.Text;
        string hinhanh = FileUpload1.FileName;
        string donvitinh = txtDvt.Text;
        int soluong = int.Parse(txtSoluong.Text);
        double dongia = double.Parse(txtDongia.Text);
        string maloai = DropDownList1.SelectedValue;

        Product pro = new Product(masp, tensp,hinhanh,donvitinh,soluong,dongia,maloai);

        return pro;

    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public string masp;
    public string tensp;
    public string hinhanh;
    public string donvitinh;
    public int soluong;
    public double dongia;
    public string maloai;

    public Product(string masp, string tensp, string hinhanh, string donvitinh, int soluong, double dongia, string maloai)
    {
        this.masp = masp;
        this.tensp = tensp;
        this.hinhanh = hinhanh;
        this.donvitinh = donvitinh;
        this.soluong = soluong;
        this.dongia = dongia;
        this.maloai = maloai;
    }
	public Product()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
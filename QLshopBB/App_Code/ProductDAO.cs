using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for ProductDAO
/// </summary>
public class ProductDAO
{
    string connectionString = ConfigurationManager.ConnectionStrings["MyData"].ToString();
    public ProductDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool insert(Product product)
    {
        string query = "INSERT INTO SANPHAM VALUES(@masp, @tensp, @hinhanh, @dvt, @soluong, @dongia, @maloai)";

        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        com.Parameters.AddWithValue("masp", product.masp);
        com.Parameters.AddWithValue("tensp", product.tensp);
        com.Parameters.AddWithValue("hinhanh", product.hinhanh);
        com.Parameters.AddWithValue("dvt", product.donvitinh);
        com.Parameters.AddWithValue("soluong", product.soluong);
        com.Parameters.AddWithValue("dongia", product.dongia);
        com.Parameters.AddWithValue("maloai", product.maloai);

        int result = (int)com.ExecuteNonQuery();
        con.Close();
        return (result >= 1);
    }

    public bool KiemTraMaSP(string ma)
    {
        string query = "SELECT COUNT(*) FROM SANPHAM WHERE MASP = '" + ma + "'";
        SqlConnection con = new SqlConnection(connectionString);
        {
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            int result = (int)com.ExecuteScalar();
            con.Close();
            return (result >= 1);
        }
    }

    public DataSet loadDL(string query)
    {
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        return ds;
    }

    public bool getQuery(string query)
    {
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        int result = com.ExecuteNonQuery();
        con.Close();
        return (result >= 1);
    }

    
}
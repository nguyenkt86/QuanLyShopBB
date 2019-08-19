using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShopBB_dssp : System.Web.UI.Page
{
    ProductDAO DAO = new ProductDAO();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void grv_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        string masp = (sender as Button).CommandArgument;

        string query = "DELETE SANPHAM where MASP ='" + masp + "'";

        ProductDAO userDAO = new ProductDAO();

        bool result = userDAO.getQuery(query);

        if (result)
        {
            Response.Redirect("dssp.aspx");
        }
    }
}
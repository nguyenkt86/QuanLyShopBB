using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShopBB_Taikhoan : System.Web.UI.Page
{
    UserDAO DAO = new UserDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        string query = "SELECT * from Useradmin where Username = '"+Session["username"].ToString()+"'";
        DataTable dt = DAO.LoadDataTable(query);
        
        txtFirstname.Text = dt.Rows[0]["Firstname"].ToString();
        txtLastname.Text = dt.Rows[0]["Lastname"].ToString();
        txtAddress.Text = dt.Rows[0]["Address"].ToString();
        txtMail.Text = dt.Rows[0]["Email"].ToString();
        txtPhone.Text = dt.Rows[0]["Phone"].ToString();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string firstname = txtFirstname.Text;
        string lastname = txtLastname.Text;
        string mail = txtMail.Text;
        string address = txtAddress.Text;
        string phone = txtPhone.Text;

        string a = @"UPDATE Useradmin set Firstname = '" + 
            firstname + "',Lastname= '" + lastname + "', Address= '" +
            address + "', Email= '" + mail + "', Phone= '" + phone +
            "' where Username ='" + Session["username"].ToString()+ "' ";

        bool result =(bool) DAO.getquery(a);
        if (result)
        {
            Response.Redirect("Taikhoan.aspx");
        }


    }


}
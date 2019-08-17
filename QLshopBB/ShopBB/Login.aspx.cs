using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ShopBB_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
       
        string username = txtUsername.Text;
        string password = txtPassword.Text;

        UserDAO DAO = new UserDAO();

        bool Check = DAO.Login(username,password);

        if (Check)
        {
            Session["username"] = username;
            Response.Redirect("admin.aspx");
        }
        else
            lblThongbao.Text = "Sai tên tài khoản hoặc mật khẩu!";
    }
}
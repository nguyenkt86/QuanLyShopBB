using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for UserDAO
/// </summary>
public class UserDAO
{
    string connectionString = ConfigurationManager.ConnectionStrings["MyData"].ToString();
    public UserDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool CheckUser(string username)
    {
        string query = "SELECT COUNT(*) from Useradmin where Username = '" + username + "'";

        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        int result = (int)com.ExecuteScalar();
        con.Close();
        return (result >= 1);
    }

    public bool Login(string username, string pass)
    {
        string query = "SELECT COUNT(*) from Useradmin where Username = '" + username + "' and Password = '" + pass + "'";

        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        int result = (int)com.ExecuteScalar();
        con.Close();
        return (result >= 1);
    }

    public DataTable LoadDataTable(string query)
    {
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;
    }

    public bool getquery(string query)
    {
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        int result = (int)com.ExecuteNonQuery();
        con.Close();
        return (result >= 1);
    }
}
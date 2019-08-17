using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    public string username;
    public string password;
    public string firstname;
    public string lastname;
    public string email;
    public string address;
    public string phone;
    public bool gender;

    public User(string username, string password, string firstname, string lastname, string email, string address, string phone, bool gender)
    {
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.gender = gender;
    }
	public User()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
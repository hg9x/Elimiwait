using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValidEmail(EmailAddress.Text ))
        {
            //some other handle next
            Response.Redirect("Page2.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please enter a valid email address')</script>");
        }
    }
    bool IsValidEmail(string strIn)
    {
        // Return true if strIn is in valid e-mail format. 
        return Regex.IsMatch(strIn, @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
    }
}
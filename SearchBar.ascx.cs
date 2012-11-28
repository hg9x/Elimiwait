using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_SearchBar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdSearch_Click(object sender, EventArgs e)
    {
        // if user does not enter any text, sned a querystring instructing user to enter search terms;
        // otherwise, send user to search.aspx with their search term as a query string
        // this will search for their entire search term (not pieces of the term)
        if (txtSearchBox.Text == "")
        {
            Response.Redirect("Search.aspx?err=Please enter some search terms");
        }
        else
        {
            Response.Redirect("Search.aspx?q=" + txtSearchBox.Text);
        }
    }
}
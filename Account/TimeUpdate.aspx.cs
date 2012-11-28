using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_TimeUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = LoginName1.Page.User.Identity.Name;
        this.Form.DefaultButton = ((LinkButton)FormView1.FindControl("UpdateButton")).UniqueID;
    }
}
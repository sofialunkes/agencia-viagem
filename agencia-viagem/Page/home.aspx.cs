using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        if ("deyse@suzane.com" == txtEmailLogin.Text)
        {
            Session["EMAIL"] = txtEmailLogin.Text;
        }
        if ("123" == txtSenhaLogin.Text)
        {
            Session["SENHA"] = txtSenhaLogin.Text;
        }

        
        if (Session["EMAIL"] != null && Session["SENHA"] != null)
        {
            Response.Redirect("Index.aspx");
        }
        else
        {
            Response.Redirect("home.aspx");
        }
    }
}
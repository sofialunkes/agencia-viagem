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
        Cliente cliente = new Cliente();
        cliente.Email = txtEmailLogin.Text;
        cliente.Senha = txtSenhaLogin.Text;

        cliente = ClienteBD.Select(cliente);
        Session["USUARIO"] = cliente;
        
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
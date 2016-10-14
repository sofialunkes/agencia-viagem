using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSair_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void btnCliente_Click(object sender, EventArgs e)
    {
        Response.Redirect("cliente.aspx");
    }
    protected void btnHotel_Click(object sender, EventArgs e)
    {
        Response.Redirect("hotel.aspx");
    }
    protected void btnPacote_Click(object sender, EventArgs e)
    {
        Response.Redirect("pacote.aspx");
    }
    protected void btnVenda_Click(object sender, EventArgs e)
    {
        Response.Redirect("venda.aspx");
    }
}

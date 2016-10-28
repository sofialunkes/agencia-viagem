using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_home : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }

    protected void btnEntrar_Click(object sender, EventArgs e) {
        Cliente cliente = new Cliente();
        cliente.Email = txtEmailLogin.Text;
        cliente.Senha = txtSenhaLogin.Text;

        int login = ClienteBD.Select(cliente);

        if (login < 0) {
            lblFalhaLogin.Text = "<div class ='row'>"
                + "<div class='alert aler-danger'>"
                + "Email ou Senha Incorretos! Tente novamente. </div>"
                + "</div>";
        } else {
            Session["USUARIO"] = cliente;
            Response.Redirect("Dashboard.aspx");
        }
    }
}
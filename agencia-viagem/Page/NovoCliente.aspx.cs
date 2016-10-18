using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }

    protected void btnCriarConta_Click(object sender, EventArgs e) {
        Cliente cliente = new Cliente();
        cliente.Nome = txtNome.Text;
        cliente.Email = txtEmail.Text;
        cliente.Senha = txtSenha.Text;
        cliente.Cpf = txtCpf.Text;
        cliente.Telefone = txtTelefone.Text;

        int retorno = 0;
        retorno = ClienteBD.Insert(cliente);

        if (retorno > 0) {
            Session["USUARIO"] = cliente;
            Response.Redirect("Index.aspx");
        } else {
            lblIncorreto.Text = "<div class='alert alert-danger'> Cadastro incorreto. Verifique os campos </div>";
        }
    }
}
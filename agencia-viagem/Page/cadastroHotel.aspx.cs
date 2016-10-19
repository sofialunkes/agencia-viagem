using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_cadastroHotel : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["USUARIO"] == null) {
            Response.Redirect("home.aspx");
        }
    }
    protected void btnCancelar_Click(object sender, EventArgs e) {
        Response.Redirect("hotel.aspx");
    }

    protected void btnCadastrar_Click(object sender, EventArgs e) {
        Hotel hotel = new Hotel();

        hotel.Nome = txtNomeHotel.Text;
        hotel.Classificacao = Convert.ToInt32(ddlClassificacao.SelectedValue);
        hotel.Cidade = txtCidade.Text;

        int status = HotelBD.Insert(hotel);

        if (status == 0) {
            lblInfo.Text = "<div class='alert alert-success col-lg-12'>Cadastro Efetuado com Sucesso!</div>";
            txtNomeHotel.Text = "";
            ddlClassificacao.SelectedValue = "";
            txtCidade.Text = "";
        } else {
            lblInfo.Text = "<div class='alert alert-danger col-lg-12'>Erro ao Cadastrar. Verifique as informações </div>";
        }
    }
}
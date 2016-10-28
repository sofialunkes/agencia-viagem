using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_cadastroPacote : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["USUARIO"] == null) {
            Response.Redirect("home.aspx");
        }
        if (!IsPostBack) {
            CarregarHoteis();
        }
    }
    protected void btnCancelar_Click(object sender, EventArgs e) {
        Response.Redirect("pacote.aspx");
    }
    protected void CarregarHoteis() {
        DataSet dsHotel = HotelBD.SelectAll();
        ddlHotel.DataSource = dsHotel;
        ddlHotel.DataTextField = "HOT_NOME";
        ddlHotel.DataValueField = "HOT_CODIGO";
        ddlHotel.DataBind();
        ddlHotel.Items.Insert(0, "Selecione");
    }

    protected void btnCadastrar_Click(object sender, EventArgs e) {
        Pacote pacote = new Pacote();
        pacote.Descricao = txtDescPacote.Text;
        pacote.DataInicio = Convert.ToDateTime(txtDateInicio.Text);
        pacote.Hotel.Codigo = Convert.ToInt32(ddlHotel.SelectedValue);
        pacote.QtdDias = Convert.ToInt32(txtQntdDias.Text);
        pacote.Valor = Convert.ToDouble(txtValorPacote.Text);

        int retorno = 0;
        retorno = PacoteBD.Insert(pacote);

        if (retorno < 0) {
            lblInformacao.Text = "<div class='alert alert-danger'> Pacote inserido incorretamente. Verifique os campos </div>";
        }else {
            lblInformacao.Text = "<div class='alert alert-success col-lg-12'>Pacote cadastrado com Sucesso!</div>";
            txtDateInicio = null;
            txtDescPacote = null;
            txtQntdDias = null;
            txtValorPacote = null;
        }
    }   
}
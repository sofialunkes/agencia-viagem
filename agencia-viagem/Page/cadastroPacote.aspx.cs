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

    }
}
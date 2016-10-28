using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_pacote : System.Web.UI.Page {
    protected DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["USUARIO"] == null) {
            Response.Redirect("home.aspx");
        }

        if (!Page.IsPostBack) {
            CarregarGrid();
        }
        if (gvPacotes.Rows.Count > 0) {
            gvPacotes.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
    protected void btnCadastrarNovoPacote_Click(object sender, EventArgs e) {
        Response.Redirect("cadastroPacote.aspx");
    }

    private void CarregarGrid() {
        ds = PacoteBD.SelectAll();
        int qtd = ds.Tables[0].Rows.Count;

        if (qtd > 0) {
            gvPacotes.DataSource = ds.Tables[0].DefaultView;
            gvPacotes.DataBind();
            gvPacotes.Visible = true;
            gvPacotes.HeaderRow.TableSection = TableRowSection.TableHeader;
        } else {
            gvPacotes.Visible = false;
        }
    }

    protected void OnUpdate(object sender, EventArgs e) {
        GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
        Pacote pacote = new Pacote();
        pacote.Codigo = Convert.ToInt32((row.Cells[0].Text));
        pacote.Descricao = (row.Cells[1].Controls[0] as TextBox).Text;
        pacote.Hotel.Nome = (row.Cells[2].Controls[0] as TextBox).Text;
        pacote.DataInicio = Convert.ToDateTime((row.Cells[3].Controls[0] as TextBox).Text);
        pacote.Valor = Convert.ToDouble((row.Cells[4].Controls[0] as TextBox).Text);

        int status = PacoteBD.Update(pacote);
        if (status != 0) {
            Response.Write("<script>alert('Erro'); </script>");
        }

        gvPacotes.EditIndex = -1;
        CarregarGrid();
    }
    protected void OnCancel(object sender, EventArgs e) {
        gvPacotes.EditIndex = -1;
        CarregarGrid();
    }

    protected void gvPacotes_RowEditing(object sender, GridViewEditEventArgs e) {
        gvPacotes.EditIndex = e.NewEditIndex;
        CarregarGrid();
    }

    protected void gvPacotes_RowDeleted(object sender, GridViewDeletedEventArgs e) {

    }
}
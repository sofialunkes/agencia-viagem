using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_cliente : System.Web.UI.Page {
    protected DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["USUARIO"] == null) {
            Response.Redirect("home.aspx");
        }

        if (!Page.IsPostBack) {
            CarregarGrid();
        }
        if (gvClientes.Rows.Count > 0) {
            gvClientes.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
    protected void btnCadastrarNovoCliente_Click(object sender, EventArgs e) {
        Response.Redirect("cadastroCliente.aspx");
    }

    private void CarregarGrid() {
        ds = ClienteBD.SelectAll();
        int qtd = ds.Tables[0].Rows.Count;

        if (qtd > 0) {
            gvClientes.DataSource = ds.Tables[0].DefaultView;
            gvClientes.DataBind();
            gvClientes.Visible = true;
            gvClientes.HeaderRow.TableSection = TableRowSection.TableHeader;
        } else {
            gvClientes.Visible = false;
        }
    }

    protected void gvClientes_RowEditing(object sender, GridViewEditEventArgs e) {
        gvClientes.EditIndex = e.NewEditIndex;
        CarregarGrid();
    }

    protected void gvClientes_RowDeleted(object sender, GridViewDeletedEventArgs e) {

    }

    protected void OnUpdate(object sender, EventArgs e) {
        GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
        Cliente cliente = new Cliente();
        cliente.Codigo = Convert.ToInt32((row.Cells[0].Text));
        cliente.Nome= (row.Cells[1].Controls[0] as TextBox).Text;
        cliente.Email= (row.Cells[2].Controls[0] as TextBox).Text;
        cliente.Cpf = (row.Cells[3].Controls[0] as TextBox).Text;
        cliente.Telefone= (row.Cells[4].Controls[0] as TextBox).Text;

        int status = ClienteBD.Update(cliente);
        if (status != 0) {
            Response.Write("<script>alert('Erro'); </script>");
        }

        gvClientes.EditIndex = -1;
        CarregarGrid();
    }

    protected void OnCancel(object sender, EventArgs e) {
        gvClientes.EditIndex = -1;
        CarregarGrid();
    }
}
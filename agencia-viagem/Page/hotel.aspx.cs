using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_hotel : System.Web.UI.Page {

    protected DataSet ds = null;

    protected void Page_Load(object sender, EventArgs e) {
        if (Session["USUARIO"] == null) {
            Response.Redirect("home.aspx");
        }

        if (!Page.IsPostBack) {
            CarregarGrid();
        }
        if (gvHotels.Rows.Count > 0) {
            gvHotels.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }

    private void CarregarGrid() {
        ds = HotelBD.SelectAll();
        int qtd = ds.Tables[0].Rows.Count;

        if (qtd > 0) {
            gvHotels.DataSource = ds.Tables[0].DefaultView;
            gvHotels.DataBind();
            gvHotels.Visible = true;
            gvHotels.HeaderRow.TableSection = TableRowSection.TableHeader;
        } else {
            gvHotels.Visible = false;
        }
    }


    /*
    protected void gvHotels_RowCommand(object sender, GridViewCommandEventArgs e) {
        if (e.CommandName == "Excluir") {
            int status = HotelBD.Delete(Convert.ToInt32(e.CommandArgument));

            if(status == 0) {
                CarregarGrid();
                Response.Write("<script>alert('Excluido'); </script>");
            }else {
                Response.Write("<script>alert('Erro'); </script>");
            }
        }
    }
    */

    protected void gvHotels_RowEditing(object sender, GridViewEditEventArgs e) {
        gvHotels.EditIndex = e.NewEditIndex;
        CarregarGrid();
    }

    protected void OnUpdate(object sender, EventArgs e) {
        GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
        int classificacao = Convert.ToInt32((row.Cells[1].Controls[0] as TextBox).Text);
        string nome = (row.Cells[2].Controls[0] as TextBox).Text;
        string cidade = (row.Cells[3].Controls[0] as TextBox).Text;
        Hotel hotel = new Hotel();

        hotel.Codigo = Convert.ToInt32((row.Cells[0].Controls[0] as TextBox).Text);
        hotel.Nome = nome;
        hotel.Cidade = cidade;
        hotel.Classificacao = classificacao;

        int status = HotelBD.Update(hotel);
        if(status != 0) {
            Response.Write("<script>alert('Erro'); </script>");
        }

        gvHotels.EditIndex = -1;
        CarregarGrid();
    }

    protected void OnCancel(object sender, EventArgs e) {

    }

    protected void btnCadastrarNovoHotel_Click(object sender, EventArgs e) {
        Response.Redirect("cadastroHotel.aspx");
    }
}
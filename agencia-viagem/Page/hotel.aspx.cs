using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_hotel : System.Web.UI.Page {
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
        DataSet ds = HotelBD.SelectAll();

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

    protected void btnCadastrarNovoHotel_Click(object sender, EventArgs e) {
        Response.Redirect("cadastroHotel.aspx");
    }

    protected void gvHotels_RowDataBound(object sender, GridViewRowEventArgs e) {

    }


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
}
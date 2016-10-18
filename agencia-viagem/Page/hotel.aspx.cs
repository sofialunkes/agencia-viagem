﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_hotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USUARIO"] == null) {
            Response.Redirect("home.aspx");
        }
    }
    protected void btnCadastrarNovoHotel_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastroHotel.aspx");
    }
}
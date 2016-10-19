<%@ Page Title="Agência de Viagens" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="cadastroHotel.aspx.cs" Inherits="Page_cadastroHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="col-xs-10">
        <div class="row">
            <h2>Cadastro de Hotel</h2>
            <hr />
        </div>
        <div class="row">
            <h4 class="col-lg-12">Nome:</h4>
            <asp:TextBox ID="txtNomeHotel" runat="server" placeholder="Nome do Hotel" CssClass="form-control col-lg-10"></asp:TextBox>
        </div>
        <br />
        <div class="row">
            <h4 class="col-lg-12">Classificação</h4>
            <asp:DropDownList runat="server" CssClass="btn btn-info dropdown col-lg-2 btn-align" ID="ddlClassificacao">
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div class="row">
            <h4 class="col-lg-12">Cidade:</h4>
            <asp:TextBox runat="server" ID="txtCidade" CssClass="form-control col-lg-10"></asp:TextBox>
        </div>
        <br />

        <div class="row">
            <div class="col-xs-6 col-xs-offset-6">
                <asp:Button ID="btnCancelar" CssClass="btn btn-danger col-lg-5" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                <div class="col-lg-1"></div>
                <asp:Button ID="btnCadastrar" CssClass="btn btn-success col-lg-5" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </div>
        </div>

        <br />
        <br />
        <div class="row">
            <div class="col-lg-12">
                <asp:Label runat="server" ID="lblInfo"></asp:Label>
            </div>
        </div>
        <br />
    </div>
</asp:Content>


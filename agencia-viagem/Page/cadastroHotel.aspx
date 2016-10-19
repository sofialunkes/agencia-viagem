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
            <asp:DropDownList runat="server" CssClass="btn btn-info dropdown col-lg-2 btn-align">
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div class="row">
            <h4 class="col-lg-12">Estado:</h4>
            <asp:DropDownList runat="server" ID="ddlEstado" CssClass="form-control col-lg-10"></asp:DropDownList>
        </div>

        <br />
        <h4>Cidade:</h4>
        <asp:DropDownList runat="server" ID="ddlCidade" CssClass="form-control"></asp:DropDownList>
        <br />
        <br />

        <div class="col-xs-2 col-xs-offset-8">
            <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" Width="95px" OnClick="btnCancelar_Click" />
        </div>
        <div class="col-xs-2">
            <asp:Button ID="btnCadastrar" CssClass="btn btn-success" runat="server" Text="Cadastrar" Width="95px" />
        </div>
        <br />
        <br />
        <br />
    </div>
</asp:Content>


<%@ Page Title="Agência de Viagens" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="cadastroVenda.aspx.cs" Inherits="Page_cadastroVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="col-xs-10" <%-- style="background: white"--%>>
        <h2>Cadastro de Venda</h2>
        <hr />
        <h4>Cliente:</h4>
        <asp:TextBox ID="txtNomeCliente" runat="server" placeholder="Nome do Cliente" CssClass="form-control"></asp:TextBox>
        <br />
        <h4>Pacote:</h4>
        <div class="row">
            <div class="col-xs-10">
                <asp:DropDownList runat="server" ID="ddlPacote" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-xs-2">
                <asp:Button ID="btnNovoPacote" CssClass="btn btn-default" runat="server" Text="NOVO" />
            </div>
        </div>
        <br />
        <div class="col-xs-2 col-xs-offset-8">
            <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" Width="95px" OnClick="btnCancelar_Click" />
        </div>
        <div class="col-xs-2">
            <asp:Button ID="btnConcluirVenda" CssClass="btn btn-success" runat="server" Text="Concluir" Width="95px" />
        </div>
        <br />
        <br />
        <br />
    </div>
</asp:Content>


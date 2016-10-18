<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Cadastro.master" AutoEventWireup="true" CodeFile="cadastroCliente.aspx.cs" Inherits="Page_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="col-xs-4 col-xs-offset-4 formulario">
            <div class="row">
                <div class="col-xs-4 col-xs-offset-1">
                    <img src="../img/aviao3.png" style="width: 100%; height: 100%; padding-top: 20px;">
                </div>
                <div class="col-xs-6">
                    <h2>Agência de Viagens</h2>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-xs-2">
                    <h4>Nome</h4>
                </div>
                <div class="col-xs-offset-1 col-xs-9">
                    <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" placeholder="ex: Jose da Silva"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-2">
                    <h4>Email</h4>
                </div>
                <div class="col-xs-offset-1 col-xs-9">
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="ex: 123pulinhos@nois.com"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-2">
                    <h4>Senha</h4>
                </div>
                <div class="col-xs-offset-1 col-xs-9">
                    <asp:TextBox runat="server" ID="txtSenha" CssClass="form-control" TextMode="Password" placeholder="*********"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-2">
                    <h4>CPF</h4>
                </div>
                <div class="col-xs-offset-1 col-xs-9">
                    <asp:TextBox runat="server" ID="txtCpf" CssClass="form-control" placeholder="123-456-789-00"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-2">
                    <h4>Telefone</h4>
                </div>
                <div class="col-xs-offset-1 col-xs-9">
                    <asp:TextBox runat="server" ID="txtTelefone" CssClass="form-control" placeholder="00 99999-9999"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <br />
                <asp:Label runat="server" ID="lblIncorreto"></asp:Label>
            </div>
            <div class="row">
                <div class="col-xs-6 col-xs-offset-3">
                    <br />
                    <asp:Button runat="server" ID="btnCriarConta" OnClick="btnCriarConta_Click" Text="Criar Conta!" CssClass="btn btn-success col-lg-12 " />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

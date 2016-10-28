<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="cadastroPacote.aspx.cs" Inherits="Page_cadastroPacote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
            <div class="col-xs-10"<%-- style="background: white"--%>>
                <h2>Cadastro de Pacote</h2>
                <hr />
                <h4>Descricao:</h4>
                <asp:TextBox ID="txtDescPacote" runat="server" placeholder="Descrição do Pacote" CssClass="form-control"></asp:TextBox>
                <br />
                <div class="row">
                    <div class="col-xs-6">
                        <h4>Data Ínicio:</h4>
                        <asp:TextBox ID="txtDateInicio" runat="server" TextMode="Date" placeholder="--/--/----" CssClass="form-control"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-xs-6">
                        <h4>Quantidade de Dias:</h4>
                        <asp:TextBox ID="txtQntdDias" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <h4>Hotel:</h4>
                <asp:DropDownList runat="server" ID="ddlHotel" placeholder="Selecione o Hotel" CssClass="form-control"></asp:DropDownList>
                <br />
                <h4>Valor Total do Pacote:</h4>
                <asp:TextBox ID="txtValorPacote" runat="server" placeholder="R$" CssClass="form-control"></asp:TextBox>
                <br />

                <div class="col-xs-2 col-xs-offset-8">
                    <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" Width="95px" OnClick="btnCancelar_Click" />
                </div>
                <div class="col-xs-2">
                    <asp:Button ID="btnCadastrar" CssClass="btn btn-success" runat="server" Text="Cadastrar" Width="95px"  OnClick="btnCadastrar_Click" />
                </div>
                <br />
                <br /><br />
                <asp:Label runat="server" ID="lblInformacao"></asp:Label>
            </div>
</asp:Content>


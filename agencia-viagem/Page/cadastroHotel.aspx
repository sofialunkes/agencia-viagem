<%@ Page Title="Agência de Viagens" Language="C#" MasterPageFile="~/Page/Master.master" AutoEventWireup="true" CodeFile="cadastroHotel.aspx.cs" Inherits="Page_cadastroHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
            <div class="col-xs-10"<%-- style="background: white"--%>>
                <h2>Cadastro de Hotel</h2>
                <hr />
                <h4>Nome:</h4>
                <asp:TextBox ID="txtNomeHotel" runat="server" placeholder="Nome do Hotel" CssClass="form-control"></asp:TextBox>
                <br />
                <h4>Classificação</h4>
                ESTRELINHA
                <br />    
                <br />
                <h4>Estado:</h4>
                <asp:DropDownList runat="server" ID="ddlEstado" CssClass="form-control"></asp:DropDownList>
                <br />
                <h4>Cidade:</h4>
                <asp:DropDownList runat="server" ID="ddlCidade" CssClass="form-control"></asp:DropDownList>
                <br /><br />

                <div class="col-xs-2 col-xs-offset-8">
                    <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" Width="95px" />
                </div>
                <div class="col-xs-2">
                    <asp:Button ID="btnCadastrar" CssClass="btn btn-success" runat="server" Text="Cadastrar" Width="95px"  />
                </div>
                <br />
                <br /><br />
            </div>
</asp:Content>


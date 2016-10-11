<%@ Page Title="Agência de Viagens" Language="C#" MasterPageFile="~/Page/Master.master" AutoEventWireup="true" CodeFile="cadastroPacotes.aspx.cs" Inherits="Page_cadastroPacotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br /><br /><br />
            <div class="col-xs-10"<%-- style="background: white"--%>>
                <h2>Cadastro de Pacote</h2>
                <hr />
                <h4>Descrição:</h4>
                <asp:TextBox ID="txtNomeHotel" runat="server" placeholder="Descrição do Pacote" CssClass="form-control"></asp:TextBox>
                <br />
                <div class="row">
                    <div class="col-xs-6"><h4>Data Inicial:</h4></div>
                    <div class="col-xs-6"><h4>Quantidade de Dias:</h4></div>
                </div>     
                <div class="row">
                    <div class="col-xs-6"><asp:TextBox ID="txtDataInicio" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-xs-6"><asp:TextBox ID="txtQntDias" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox></div>
                </div>                
                <br />    
                <h4>Hotel:</h4>
                <asp:DropDownList runat="server" ID="ddlHotel" CssClass="form-control"></asp:DropDownList>
                <br />
                <h4>Valor Total:</h4>
                <asp:TextBox ID="txtValorPacote" runat="server" placeholder="Valor Total do Pacote" CssClass="form-control"></asp:TextBox>
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


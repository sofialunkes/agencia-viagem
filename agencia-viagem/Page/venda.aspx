<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="venda.aspx.cs" Inherits="Page_venda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--colocar aqui aquela gridview igual q ficará no adm mostrando todos os cadastrados, e com aopção de update e delete deles--%>
        <asp:Button ID="btnCadastrarNovaVenda" CssClass="btn btn-success" runat="server" Text="Cadastrar Novo" Width="160px" OnClick="btnCadastrarNovaVenda_Click"  />
    <br />    <br />    <br />
</asp:Content>


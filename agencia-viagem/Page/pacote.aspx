<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Master.master" AutoEventWireup="true" CodeFile="pacote.aspx.cs" Inherits="Page_pacote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
    <br />
    <br />

    <table>
        <tr>
            <th>DESCRIÇÃO</th>
            <th> |    QNTD DE DIAS</th>
            <th> |    HOTEL</th>
            <th> |    VALOR</th>
            <th> |    EDITAR</th>
            <th> |    EXCLUIR</th>
        </tr>

        <tr>
            <td>ABDEFGHGIJKLSMNSJAIOS</td>
            <td> |    478.258.493-85</td>
            <td> |    ABDEFGHGIJKLSMNSJAIOS</td>
            <td> |    478.258.493-85</td>
            <td> |    EDITAR</td>
            <td> |    EXCLUIR</td>
        </tr>
    </table>
    <br />    <br />
     <%--colocar aqui aquela gridview igual q ficará no adm mostrando todos os cadastrados, e com aopção de update e delete deles--%>
    <asp:Button ID="btnCadastrarNovoPacote" CssClass="btn btn-success" runat="server" Text="Cadastrar Novo" Width="160px" OnClick="btnCadastrarNovoPacote_Click" />
    <br />    <br />    <br />
</asp:Content>


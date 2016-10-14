<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="hotel.aspx.cs" Inherits="Page_hotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
    <br />
    <br />

    <table>
        <tr>
            <th>NOME</th>
            <th> |    CLASSIFICAÇÃO</th>
            <th> |    ESTADO</th>
            <th> |    CIDADE</th>
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
    <asp:Button ID="btnCadastrarNovoHotel" CssClass="btn btn-success" runat="server" Text="Cadastrar Novo" Width="160px" OnClick="btnCadastrarNovoHotel_Click" />
    <br />    <br />    <br />
</asp:Content>


<%@ Page Title="Agência de Viagens" Language="C#" MasterPageFile="~/Page/Master.master" AutoEventWireup="true" CodeFile="cadastroCliente.aspx.cs" Inherits="Page_cadastroCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="col-xs-10" <%-- style="background: white"--%>>
        <h2>Cadastro de Cliente</h2>
        <hr />
        <h4>Nome:</h4>
        <asp:TextBox ID="txtNomeHotel" runat="server" placeholder="Nome do Cliente" CssClass="form-control"></asp:TextBox>
        <h4>CPF:</h4>
        <asp:TextBox ID="txtCpf" runat="server" placeholder="CPF do Cliente" CssClass="form-control"></asp:TextBox>
        <div class="row">
            <div class="col-xs-6">
                <h4>Data de Nascimento:</h4>
            </div>
            <div class="col-xs-6">
                <h4>Telefone:</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <asp:TextBox ID="txtDataNasc" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtTelefoneCliente" runat="server" CssClass="form-control"></asp:TextBox></div>
        </div>
        <h4>Dependentes?</h4>
        <a href="#dependente" data-toggle="modal" style="text-decoration: none">
            <h4 class="btn btn-default">Adicionar Dependente</h4>
        </a>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" CssClass="pVertical" ScrollBars="vertical">
            <table style="border: 1px solid #808080; width: 100%; height: 125px">
                <thead>
                    <tr>
                        <th style="width: 150px; text-align: center; font-size: 13pt" colspan="3">Dependentes</th>
                    </tr>
                    <tr>
                        <th style="width: 150px">Nome</th>
                        <th style="width: 80px">Nasc.</th>
                        <th style="width: 100px">CPF</th>
                        <th style="width: 30px"></th>
                        <th style="width: 30px"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>DENISE</td>
                        <td>12/08/1996</td>
                        <td>457.987.354-98</td>
                        <td>Editar</td>
                        <td>Excluir</td>
                    </tr>
                    <tr>
                        <td>DENISE</td>
                        <td>12/08/1996</td>
                        <td>457.987.354-98</td>
                        <td>Editar</td>
                        <td>Excluir</td>
                    </tr>
                    <tr>
                        <td>DENISE</td>
                        <td>12/08/1996</td>
                        <td>457.987.354-98</td>
                        <td>Editar</td>
                        <td>Excluir</td>
                    </tr>
                </tbody>
            </table>
        </asp:Panel>
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








    <%--MODAL PARA ADICIONAR NOVO DEPENDENTE--%>
    <div id="dependente" class="modal fade" role="dialog">
        <div class="modal-dialog ">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                    <h4 class="modal-title titulo">Adicionar Novo Dependente:</h4>
                    <%--titulo do modal--%>
                </div>

                <div class="modal-body">
                    <%--CONTEUDO MODAL--%>
                    <h4>Nome:</h4>
                    <asp:TextBox ID="txtNomeDepend" runat="server" placeholder="Nome do Dependente" CssClass="form-control"></asp:TextBox>
                    <div class="row">
                        <div class="col-xs-6">
                            <h4>Data de Nascimento:</h4>
                        </div>
                        <div class="col-xs-6">
                            <h4>CPF:</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <asp:TextBox ID="txtDataNascDepend" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-xs-6">
                            <asp:TextBox ID="txtCpfDepend" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>



                    <%-- Botão --%>
                    <div class="modal-footer">
                        <asp:Button ID="btnCancelarDepend" runat="server" Text="Cancelar" CssClass="btn-danger btn" />
                        <asp:Button ID="btnAdicionarDepend" runat="server" Text="Adicionar Dependente" CssClass="btn-success btn" />
                    </div>
                </div>
            </div>
        </div>
    </div>





</asp:Content>


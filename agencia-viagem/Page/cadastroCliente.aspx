<%@ Page Title="Agência de Viagens" Language="C#" MasterPageFile="~/Page/Master.master" AutoEventWireup="true" CodeFile="cadastroCliente.aspx.cs" Inherits="Page_cadastroCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br /><br /><br />
            <div class="col-xs-10"<%-- style="background: white"--%>>
                <h2>Cadastro de Cliente</h2>
                <hr />
                <h4>Nome:</h4>
                <asp:TextBox ID="txtNomeHotel" runat="server" placeholder="Nome do Cliente" CssClass="form-control"></asp:TextBox>   
                <h4>CPF:</h4>
                <asp:TextBox ID="txtCpf" runat="server" placeholder="CPF do Cliente" CssClass="form-control"></asp:TextBox>   
                <div class="row">
                    <div class="col-xs-6"><h4>Data de Nascimento:</h4></div>
                    <div class="col-xs-6"><h4>Telefone:</h4></div>
                </div>     
                <div class="row">
                    <div class="col-xs-6"><asp:TextBox ID="txtDataNasc" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-xs-6"><asp:TextBox ID="txtTelefoneCliente" runat="server" CssClass="form-control"></asp:TextBox></div>
                </div> 
                <br />
                <h4>Dependentes?</h4>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="row">
                            <div class="col-xs-10">
                                <h4>Nome:</h4>
                            </div>
                            <div class="col-xs-2">
                                <asp:Button ID="btnDepend" CssClass="btn btn-default" runat="server" Text="+"  />
                            </div>
                        </div>
                        <asp:TextBox ID="txtNomeDepend" runat="server" placeholder="Nome do Dependente" CssClass="form-control"></asp:TextBox>   
                        <div class="row">
                            <div class="col-xs-6"><h4>Data de Nascimento:</h4></div>
                            <div class="col-xs-6"><h4>CPF:</h4></div>
                        </div>     
                        <div class="row">
                            <div class="col-xs-6"><asp:TextBox ID="txtDataNascDepend" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox></div>
                            <div class="col-xs-6"><asp:TextBox ID="txtCpfDepend" runat="server" CssClass="form-control"></asp:TextBox></div>
                        </div> 
                    </div>
                    <div class="col-xs-6">
                        <table style="border: 1px solid #808080; width: 385px; height: 145px;">
                            <tr>
                                <th style="width: 150px">Nome</th>
                                <th style="width: 80px">Nasc.</th>
                                <th style="width: 100px">CPF</th>                                
                            </tr>
                            <tr>
                                <td>DENISE</td>
                                <td>12/08/1996</td>
                                <td>457.987.354-98</td>
                            </tr>
                            <tr>
                                <td>DENISE</td>
                                <td>12/08/1996</td>
                                <td>457.987.354-98</td>
                            </tr>
                            <tr>
                                <td>DENISE</td>
                                <td>12/08/1996</td>
                                <td>457.987.354-98</td>
                            </tr>
                            <tr>
                                <td>DENISE</td>
                                <td>12/08/1996</td>
                                <td>457.987.354-98</td>
                            </tr>
                        </table>
                    </div>
                </div>

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


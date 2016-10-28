<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="cliente.aspx.cs" Inherits="Page_cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container ">
        <div class="row">
            <div class="col-lg-10">
                <br />
                <h2>Lista de Hóteis</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-10 table-responsive">
                <asp:GridView runat="server" ID="gvClientes" AutoGenerateColumns="false" OnRowEditing="gvClientes_RowEditing" OnRowDeleted="gvClientes_RowDeleted" CssClass="table table-hover">
                    <Columns>
                        <asp:BoundField DataField="cli_codigo" HeaderText="Codigo" ReadOnly="true" />
                        <asp:BoundField DataField="cli_nome" HeaderText="Nome" />
                        <asp:BoundField DataField="cli_email" HeaderText="Email" />
                        <asp:BoundField DataField="cli_cpf" HeaderText="CPF" />
                        <asp:BoundField DataField="cli_telefone" HeaderText="Telefone" />
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Edit" CommandArgument='<%# Bind("cli_codigo") %>'>Alterar</asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton Text="Update" runat="server" OnClick="OnUpdate" />
                                <asp:LinkButton Text="Cancel" runat="server" OnClick="OnCancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbExcluir" runat="server" CommandName="Delete" CommandArgument='<%# Bind("cli_codigo") %>'>Excluir</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
     <%--colocar aqui aquela gridview igual q ficará no adm mostrando todos os cadastrados, e com aopção de update e delete deles--%>
    <asp:Button ID="btnCadastrarNovoCliente" CssClass="btn btn-success" runat="server" Text="Cadastrar Novo" Width="160px" OnClick="btnCadastrarNovoCliente_Click"  />
    <br />    <br />    <br />

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="pacote.aspx.cs" Inherits="Page_pacote" %>

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
                <asp:GridView runat="server" ID="gvPacotes" AutoGenerateColumns="false" OnRowEditing="gvHotels_RowEditing" OnRowDeleted="gvHotels_RowDeleted" CssClass="table table-hover">
                    <Columns>
                        <asp:BoundField DataField="pac.pac_codigo" HeaderText="Codigo" ReadOnly="true" />
                        <asp:BoundField DataField="pac.pac_descricao" HeaderText="Descricao" />
                        <asp:BoundField DataField="hot.hot_nome" HeaderText="Hotel" />
                        <asp:BoundField DataField="pac.pac_data_inicio" HeaderText="Data Inicio" />
                        <asp:BoundField DataField="pac.pac_valor" HeaderText="Valor" />
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Edit" CommandArgument='<%# Bind("pac.pac_codigo") %>'>Alterar</asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton Text="Update" runat="server" OnClick="OnUpdate" />
                                <asp:LinkButton Text="Cancel" runat="server" OnClick="OnCancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbExcluir" runat="server" CommandName="Delete" CommandArgument='<%# Bind("pac.pac_codigo") %>'>Excluir</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    <%--colocar aqui aquela gridview igual q ficará no adm mostrando todos os cadastrados, e com aopção de update e delete deles--%>
    <asp:Button ID="btnCadastrarNovoPacote" CssClass="btn btn-success" runat="server" Text="Cadastrar Novo" Width="160px" OnClick="btnCadastrarNovoPacote_Click" />
    <br />
    <br />
    <br />
</asp:Content>


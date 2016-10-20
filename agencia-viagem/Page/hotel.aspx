<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Dashboard.master" AutoEventWireup="true" CodeFile="hotel.aspx.cs" Inherits="Page_hotel" %>

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
                <asp:GridView runat="server" ID="gvHotels" AutoGenerateColumns="false" OnRowEditing="gvHotels_RowEditing" OnRowDeleted="gvHotels_RowDeleted" CssClass="table table-hover">
                    <Columns>
                        <asp:BoundField DataField="hot_codigo" HeaderText="Codigo" ReadOnly="true" />
                        <asp:BoundField DataField="hot_classificacao" HeaderText="Classificacao" />
                        <asp:BoundField DataField="hot_nome" HeaderText="Nome" />
                        <asp:BoundField DataField="hot_cidade" HeaderText="Cidade" />
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Edit" CommandArgument='<%# Bind("hot_codigo") %>'>Alterar</asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton Text="Update" runat="server" OnClick="OnUpdate" />
                                <asp:LinkButton Text="Cancel" runat="server" OnClick="OnCancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbExcluir" runat="server" CommandName="Delete" CommandArgument='<%# Bind("hot_codigo") %>'>Excluir</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>



    <asp:Button ID="btnCadastrarNovoHotel" CssClass="btn btn-success" runat="server" Text="Cadastrar Novo" Width="160px" OnClick="btnCadastrarNovoHotel_Click" />
    <br />
    <br />
    <br />
</asp:Content>


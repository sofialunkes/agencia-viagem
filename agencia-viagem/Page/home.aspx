<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Page_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agência de Viagens</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../css/Agencia.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body style="background: #1E7BB2; color: white">
    <form id="form1" runat="server">
        <div class="container index">
            <div class="row">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="col-xs-4 col-xs-offset-4">
                    <div class="row">
                        <div class="col-xs-4 col-xs-offset-1">
                            <img src="../img/aviao3.png" style="width: 100%; height: 100%; padding-top: 20px;" />
                        </div>
                        <div class="col-xs-6">
                            <h2>Agência de Viagens</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="row">
                        <div class="col-xs-4 col-xs-offset-4">
                            <h4>Email:</h4>
                            <asp:TextBox ID="txtEmailLogin" runat="server" placeholder="Email de Login" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4 col-xs-offset-4">
                            <h4>Senha</h4>
                            <asp:TextBox ID="txtSenhaLogin" runat="server" TextMode="Password" placeholder="********" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>
                    <asp:Label runat="server" ID="lblFalhaLogin"></asp:Label>
                    <div class="row">
                        <div class="col-xs-4 col-xs-offset-4">
                            <br />
                            <asp:Button ID="btnEntrar" CssClass="btn btn-success col-lg-6 col-lg-offset-3" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4 col-xs-offset-4">
                            <br />
                            <a href="cadastroCliente.aspx" style="color: white; font-size: 18px;" class="col-lg-6 col-lg-offset-3">Não possui conta? Cadastre-se!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Page_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agência de Viagens</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../css/Agencia.css" rel="stylesheet" />
    <script src="../js/jquery-1.12.0.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body style="background:#1E7BB2; color:white">
    <form id="form1" runat="server">
    <div class="container index">
        <div class="row">
            <br /><br /><br /><br /><br /><br />
            <div class="col-xs-6 col-xs-offset-4">
                <div class="col-xs-2">
                    <img src="../img/aviao3.png" width="65px" height="55px" />
                </div>
                <div class="col-xs-8">
                    <h2>Agência de Viagens</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-xs-offset-4">
                <h4>Email:</h4>
                <asp:TextBox ID="txtEmailLogin" runat="server" placeholder="Email de Login" CssClass="form-control"></asp:TextBox>
                <h4>Senha</h4>
                <asp:TextBox ID="txtSenhaLogin" runat="server" TextMode="Password" placeholder="********" CssClass="form-control"></asp:TextBox><br />
                <asp:Button ID="btnEntrar" CssClass="btn btn-success" runat="server" Text="Entrar" Width="95px" OnClick="btnEntrar_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
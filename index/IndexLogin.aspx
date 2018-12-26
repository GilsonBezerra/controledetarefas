<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexLogin.aspx.cs" Inherits="index.IndexLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        
        .auto-style2 {
            font-size: x-large;
        }
        #form1 {
            height: 591px;
            width: 1035px;
        }
        .auto-style3 {
            text-align: center;
            width: 1035px;
        }
        .auto-style1 {
            text-decoration: underline;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        
    </style>
</head>
<body style="background-color: #BDB76B; ">
    <center>
    <form id="form1" runat="server">
        
    <div class="auto-style3" style="height: 277px; width: 1032px">
    
        <span class="auto-style1">
    
        </span>
    
        <br />
        <br />
        <br />
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagens/logo-unip-home.png" style="z-index: 1;  top: 20px; margin-left: auto; margin-right: auto; margin-top: 0px;" Height="143px" Width="316px" />
    
        <br />
        <asp:Label ID="lblTitulo" runat="server" style="color: #FFFFFF; font-size: xx-large; font-weight: 700" Text="Bem vindo ao sistema de controle acadêmico"></asp:Label>
        <br />
        <span class="auto-style4">Faça o login ou cadastre-se</span><br />
    
    </div>
        <p class="auto-style3">
&nbsp;
            <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style2" style="color: #FFFFFF; font-weight: 700" Text="Usuário:"></asp:Label>
            &nbsp;<asp:TextBox ID="txtCod" runat="server" Width="160px" Height="25px" style="text-align: left" TabIndex="1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValidarUsuario" runat="server" ControlToValidate="txtCod" ErrorMessage="Você não preencheu o campo &quot;Usuário&quot;!" style="color: #FF0000">*</asp:RequiredFieldValidator>
            <asp:ImageButton ID="btnAcesso" runat="server" ImageUrl="~/Imagens/log-in.png" OnClick="ImageButton2_Click" style="z-index: 1; left: 853px; top: 325px; position: absolute; right: 42px; width: 71px; height: 43px" TabIndex="3" />
        </p>
        <p class="auto-style3">
&nbsp;&nbsp;<asp:Label ID="lblSenha" runat="server" CssClass="auto-style2" style="color: #FFFFFF; font-weight: 700" Text="Senha: "></asp:Label>
&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtSenha" runat="server" Height="25px" Width="160px" TextMode="Password" TabIndex="2">123</asp:TextBox>
            <asp:RequiredFieldValidator ID="ValidarSenha" runat="server" ControlToValidate="txtSenha" ErrorMessage="Você não preencheu o campo &quot;Senha&quot;!" style="color: #FF0000">*</asp:RequiredFieldValidator>
        </p>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server"  CausesValidation="False"  ImageUrl="~/Imagens/register.png" AlternateText="REGISTRE-SE" PostBackUrl="~/CadastroUsuario.aspx" CssClass="auto-style4" style="z-index: 1; left: 1000px; top: 512px; " Height="43px" Width="59px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRE-SE</p>
        <p style="text-align: center">
            &nbsp;</p>
        <p class="auto-style3">                     
            <asp:Label ID="lblEfetivaLogin" runat="server" style="color: #FF0000; font-size: large; z-index: 1; left: 850px; top: 253px; position: absolute; margin-bottom: 0px;"></asp:Label>            
        </p>
        <asp:ValidationSummary ID="ValidacoesLogin" runat="server" style="color: #FF0000; margin-left: 747px; z-index: 1; left: 790px; top: 308px; position: absolute; height: 57px; width: 327px;" Width="327px" />
            
    </form>
    </center>
</body>
</html>

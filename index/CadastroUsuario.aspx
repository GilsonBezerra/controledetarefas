<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="index.CadastroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            width: 1033px;
        }
        .auto-style6 {
            z-index: 1;
            left: 329px;
            top: 654px;
            position: absolute;
            height: 42px;
            width: 523px;
            color: #FF0000;
            font-weight: 700;
        }
        .auto-style7 {
            z-index: 1;
            left: 324px;
            top: 673px;
            position: absolute;
            height: 20px;
            width: 527px;
        }
        .auto-style8 {
            z-index: 1;
            left: 324px;
            top: 689px;
            position: absolute;
            height: 46px;
            width: 545px;
        }
        </style>
</head>
<body style="color: white; background-color: #BDB76B; width: 1031px;">
    
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="LblAviso" runat="server" style="z-index: 1; left: 263px; top: 250px; position: absolute; height: 36px; width: 526px; color: #FFFFFF; font-weight: 700; text-decoration: underline" Text="ATENÇÃO--&gt; O usuário cadastrado não poderá ser alterado futuramente"></asp:Label>
        </p>
        <div class="auto-style1">
    
            <strong>&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Imagens/logo-unip-home.png" Width="431px" style="text-align: center; margin-left: 50px" />
    
        </strong>
    
    </div>
        <p style="text-align: center">
    
            &nbsp;</p>
        <p class="auto-style1">
            <strong style="font-size: x-large">Preencha os dados abaixo:</strong></p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style2">
            <strong>Nome: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNome" runat="server" OnTextChanged="TextBox1_TextChanged" TabIndex="1" Width="280px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Preencha o campo &quot;Nome&quot; !" style="color: #FF0000">*</asp:RequiredFieldValidator>
        </p>
        <p class="auto-style2">
            Fone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFone" runat="server" OnTextChanged="TextBox1_TextChanged" TabIndex="2" TextMode="Number" MaxLength="11" Width="280px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValFone" runat="server" ControlToValidate="txtFone" ErrorMessage="Preencha o campo &quot;Fone&quot; (Somente números)!" style="color: #FF0000">*</asp:RequiredFieldValidator>
        </p>
        <p class="auto-style2">
            E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged" TabIndex="3" TextMode="Email" Width="280px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Preencha o campo &quot;E-mail&quot; !" style="color: #FF0000">*</asp:RequiredFieldValidator>
        </p>
        <p class="auto-style2">
            <strong>Usuário:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCod" runat="server" OnTextChanged="TextBox1_TextChanged" style="text-align: left" TabIndex="4" Width="280px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValUsuario" runat="server" ControlToValidate="txtCod" ErrorMessage="Preencha o campo &quot;Usuário&quot; !" style="color: #FF0000">*</asp:RequiredFieldValidator>
        </p>
        <p class="auto-style2">
            Senha:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtSenha" runat="server" OnTextChanged="TextBox1_TextChanged" TabIndex="5" TextMode="Password" Width="280px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValSenha" runat="server" ControlToValidate="txtSenha" ErrorMessage="Preencha o campo &quot;Senha&quot; !" style="color: #FF0000">*</asp:RequiredFieldValidator>
        </p>
        <p class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="btnCadastrarUser" runat="server" Height="44px" ImageUrl="~/Imagens/addCad.png" OnClick="btnCadastrarUser_Click" Width="60px" TabIndex="6" />
        </p>
        <p class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEfetivaCadastro" runat="server" style="font-weight: 700; color: #009900; font-size: x-large;"></asp:Label>
    
        <strong>
        <span class="auto-style1">
    
        <asp:ImageButton ID="btnLogof0" runat="server" Height="42px" ImageUrl="~/Imagens/voltar.png" AlternateText="Voltar" PostBackUrl="~/IndexLogin.aspx" Width="71px" CausesValidation="False" CssClass="auto-style1" ToolTip="Retornar a Tela de Login" TabIndex="7" />
    
        </span></strong>
    
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000; margin-left: 328px" Width="388px" />
        <asp:Label ID="lblErroCadastro" runat="server" CssClass="auto-style6"></asp:Label>
        <asp:Label ID="lblErroCadastro1" runat="server" CssClass="auto-style7"></asp:Label>
        <asp:Label ID="lblErroCadastro2" runat="server" CssClass="auto-style8"></asp:Label>
    </form>
</body>
</html>

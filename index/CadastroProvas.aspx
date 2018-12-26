<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroProvas.aspx.cs" Inherits="index.CadastroProvas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Controle Academico</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/style.css" rel="stylesheet">

 

    <style type="text/css">
        .auto-style1 {
            color: #000000;
            text-align: left;
            font-size: x-large;
            height: 11px;
            width: 1031px;
        }
        .auto-style2 {
            color: #000;
            text-align: center;
            font-size: x-large;
            width: 1035px;
            font-weight: 700;
            margin-left: 0px;
        }
        .auto-style3 {
            text-align: center;
            width: 1037px;
            margin-left: 0px;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style9 {
            text-align: center;
            width: 1037px;
            margin-left: 0px;
        }
        .auto-style10 {
            text-align: center;
            width: 1036px;
            margin-left: 0px;
            height: 6px;
        }
        .auto-style11 {
            color: #FFFFFF;
            text-align: center;
            font-size: medium;
            width: 1031px;
            margin-left: 4px;
        }
        .auto-style12 {
            text-align: center;
            width: 1031px;
            margin-left: 4px;
        }
    </style>
</head>
<body style="color:white; background-color: #BDB76B; width: 1037px;">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Width="119px">
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" style="text-align: center; font-size: large; color: #FFFFFF; background-color: #FFFFFF;">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="Acesso rápido" Value="Acesso rápido">
                        <asp:MenuItem Text="Alterar dados cadastrais" Value="Alterar dados cadastrais"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Cadastro.aspx" Text="Minhas tarefas" Value="Minhas tarefas"></asp:MenuItem>
                        <asp:MenuItem Text="Notas / Trabalhos" Value="Minhas provas">
                            <asp:MenuItem NavigateUrl="~/CadastroProvas.aspx" Text="Lançar notas" Value="Lançar notas"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ListarProvas.aspx" Text="Minhas notas" Value="Minhas notas"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/CadastroAC.aspx" Text="Atividades complementares" Value="Atividades complementares"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
        </asp:Panel>
    <div>
    
        <strong>
        <span class="auto-style1">
    
            <asp:Label ID="lblSessao" runat="server" style="z-index: 1; left: 64px; top: 170px; position: absolute" Visible="False"></asp:Label>
    
        </span></strong>
    
            <asp:ImageButton ID="btnHome" runat="server" Height="39px" ImageUrl="~/Imagens/main.png" PostBackUrl="~/StarPage.aspx" Width="46px" CausesValidation="False" ImageAlign="Top" style="text-align: left; z-index: 1; left: 12px; top: 167px; position: absolute;" />
    
        <span class="auto-style1">
    
        <strong>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/Imagens/logo-unip-home.png" Width="414px" style="text-align: center; margin-left:40px;" />
    
        <br />
    
        </strong>
    
        </span>
    
    </div>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Label ID="lblTitulo" runat="server" Text="CONTROLE DE PROVAS E TRABALHOS"></asp:Label>
        </p>
        <p class="auto-style11">
            Preencha abaixo os dados</p>
        <p class="auto-style12">
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style9">
            <asp:Label ID="lblVP1" runat="server" CssClass="auto-style5" Text="Nota P1:"></asp:Label>
            <asp:TextBox ID="txtNP1" runat="server" Width="50px" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNP1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
            <asp:Label ID="lblVP2" runat="server" CssClass="auto-style5" Text="Nota P2:"></asp:Label>
            <asp:TextBox ID="txtNP2" runat="server" Width="50px" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNP2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblVP3" runat="server" CssClass="auto-style5" Text="Nota P3:"></asp:Label>
            <asp:TextBox ID="txtNP3" runat="server" Width="50px" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNP3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:Label ID="lblVP4" runat="server" CssClass="auto-style5" Text="Nota P4:"></asp:Label>
            <asp:TextBox ID="txtNP4" runat="server" Width="50px" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNP4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            <asp:Label ID="lblT1" runat="server" CssClass="auto-style5" Text="Nota Trabalho 1:"></asp:Label>
            <asp:TextBox ID="txtT1" runat="server" Width="60px" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtT1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="lblT2" runat="server" CssClass="auto-style5" Text="Nota Trabalho 2:"></asp:Label>
            <asp:TextBox ID="txtT2" runat="server" Width="60px" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtT2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp; 
        </p>
        <p class="auto-style9">
            <asp:Label ID="lblProf" runat="server" CssClass="auto-style5" Text="Professor:"></asp:Label>
            <asp:DropDownList ID="drpProf" runat="server" Height="20px" Width="180px" ForeColor="Black">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Juliano</asp:ListItem>
                <asp:ListItem>César</asp:ListItem>
                <asp:ListItem>Maria Luiza</asp:ListItem>
                <asp:ListItem>Francisco</asp:ListItem>
                <asp:ListItem>Carlos</asp:ListItem>
                <asp:ListItem>Jonas</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpProf" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMateria" runat="server" CssClass="auto-style5" Text="Matéria:"></asp:Label>
            <asp:DropDownList ID="drpMateria" runat="server" Height="20px" Width="180px" ForeColor="Black" OnSelectedIndexChanged="drpMateria_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Estudos disciplinares I</asp:ListItem>
                <asp:ListItem>Matemática Aplicada</asp:ListItem>
                <asp:ListItem>Engenharia de Software I</asp:ListItem>
                <asp:ListItem>Técnicas de programação I</asp:ListItem>
                <asp:ListItem>Educação ambiental</asp:ListItem>
                <asp:ListItem>Empreendedorismo</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="drpMateria" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            &nbsp;</p>
        <p class="auto-style10">
&nbsp;
            <asp:Label ID="lblObs" runat="server" CssClass="auto-style5" Text="Observações:"></asp:Label>
        </p>
        <p class="auto-style3">
            <asp:TextBox ID="TxtObs" runat="server" Height="119px" TextMode="MultiLine" Width="510px"></asp:TextBox>
        </p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style9">
&nbsp; <asp:ImageButton ID="btnLimparCampos" runat="server" CausesValidation="False" Height="30px" ImageUrl="~/Imagens/eraser.png" Width="70px" OnClick="ImageButton3_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="btnCadastrarProva" runat="server" Height="30px" ImageUrl="~/Imagens/addCad.png" OnClick="btnCadastrarProva_Click" style="text-align: center" Width="70px" />
        </p>
        <p class="auto-style9">
&nbsp;
            <asp:ImageButton ID="lblListarProvas" runat="server" Height="34px" ImageUrl="~/Imagens/Ver cadastros.png" OnClick="ImageButton4_Click" PostBackUrl="~/ListarProvas.aspx" Width="182px" style="text-align: center" BorderStyle="None" CausesValidation="False" />
        </p>
        <p class="auto-style12">
            <asp:Label ID="lblEfetivaCadastro" runat="server" style="color: #009933; font-size: large"></asp:Label>
            <asp:Label ID="lblErroCadastro" runat="server" style="color: #FF0000"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblResultadoMediaProvas" runat="server"></asp:Label>
            <asp:Label ID="lblMedia" runat="server" style="color: #FFFFFF; font-weight: 700; background-color: #006600"></asp:Label>
            <asp:Label ID="LblMediaFinal" runat="server" ForeColor="#FF6699"></asp:Label>
            <asp:Label ID="LblEstado" runat="server" ForeColor="#0066FF"></asp:Label>
        </p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StarPage.aspx.cs" Inherits="index.StarPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            font-size: xx-large;
            color: #000000;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: xx-large;
            color: #000;
            text-align: left;
        }
        .auto-style4 {
            text-decoration: underline;
            font-size: x-large;
            color: #99CCFF;
            text-align: left;
        }
        #form1 {
            height: 732px;
            width: 1026px;
        }
        .auto-style5 {
            z-index: 1;
            left: 8px;
            top: 12px;
            position: absolute;
            height: 100px;
            width: 119px;
        }
        .auto-style6 {
            color: #000;
            font-weight: 700;
        }
    </style>
</head>
<body style="height: 743px; background-color: #BDB76B; text-align: center; color: #FFFFFF; width: 1027px;">
    <form id="form1" runat="server">
    <div style="text-align: center; background-color: #BDB76B; height: 250px; width: 1034px;">
    
        <span class="auto-style1">
    
        <asp:Label ID="lblOla" runat="server" Text="Olá, " style="z-index: 1; left: 65px; top: 194px; position: absolute; font-style: italic"></asp:Label>
        <asp:Label ID="lblSessao" runat="server" style="z-index: 1; left: 129px; top: 194px; position: absolute; font-style: italic"></asp:Label>
    
        <strong>
        <span class="auto-style3">
    
        <asp:ImageButton ID="btnLogof" runat="server" ImageUrl="~/Imagens/logof.png" PostBackUrl="~/IndexLogin.aspx" CausesValidation="False" ImageAlign="Top" style="text-align: justify; z-index: 1; left: 13px; top: 194px; position: absolute; height: 42px; width: 44px;" ToolTip="SAIR" />
    
        </span>
    
        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/Imagens/logo-unip-home.png" Width="414px" style="text-align: center; margin-left: 0px" />
    
        </strong>
    
        </span>
    
        <strong>
        <span class="auto-style4">
        <br />
        <br />
        <br />
        </span></strong>
    
        <span class="auto-style3">
        <asp:Label ID="lblTitulo" runat="server" Text="ATIVIDADES ACADÊMICAS" CssClass="auto-style6" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"></asp:Label>
    
        <strong>
        <br />
        <br />
        <br />
        </strong>
    
        </span>
    
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnEditarUsuario" runat="server" Height="120px" ImageUrl="~/Imagens/edit-icon.png" PostBackUrl="~/AtualizarUsuario.aspx" Width="110px" style="z-index: 1; left: 27px; top: 311px; position: absolute" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="bntCadastro" runat="server" Height="120px" ImageUrl="~/Imagens/tarefa.png" PostBackUrl="~/Cadastro.aspx" Width="110px" style="z-index: 1; left: 210px; top: 313px; position: absolute" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="btnContrProvas" runat="server" Height="117px" ImageUrl="~/Imagens/provas.png" Width="135px" PostBackUrl="~/CadastroProvas.aspx" OnClick="btnContrProvas_Click" style="z-index: 1; left: 640px; top: 313px; position: absolute" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnAtivCompl" runat="server" Height="130px" ImageUrl="~/Imagens/atividade.png" Width="120px" PostBackUrl="~/CadastroAC.aspx" style="z-index: 1; left: 415px; top: 307px; position: absolute" />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="btnBiblioteca" runat="server" Height="119px" ImageUrl="~/Imagens/notas.png" Width="110px" PostBackUrl="~/ListarProvas.aspx" style="z-index: 1; left: 870px; top: 311px; position: absolute" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Width="119px">
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" style="text-align: center; font-size: large; color: #FFFFFF; background-color: #FFFFFF;">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="Acesso rápido" Value="Acesso rápido">
                        <asp:MenuItem NavigateUrl="~/AtualizarUsuario.aspx" Text="Alterar dados cadastrais" Value="Alterar dados cadastrais"></asp:MenuItem>
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
        <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Blue" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" style="z-index: 1; left: 373px; top: 474px; position: absolute; height: 260px; width: 324px">
            <DayHeaderStyle BackColor="DarkGray" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="Black" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>

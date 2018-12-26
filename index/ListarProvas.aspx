<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarProvas.aspx.cs" Inherits="index.ListarProvas" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
            width: 743px;
        }
        .auto-style2 {
            width: 1033px;
            height: 209px;
            text-align: center;
        }
        .auto-style3 {
            width: 673px;
            height: 77px;
        }
        .auto-style4 {
            width: 257px;
            height: 77px;
        }
        .auto-style5 {
            color: #333333;
        }
        .auto-style6 {
            margin-top: 0;
        }
        .auto-style7 {
            height: 77px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            z-index: 1;
            left: 659px;
            top: 288px;
            position: absolute;
            width: 78px;
            color: #FFFFFF;
        }
        .auto-style11 {
            width: 119%;
            height: 117px;
            margin-top: 0px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        </style>

</head>
<body style="background-color: #BDB76B; width: 1160px; height: 256px;">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Width="119px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5" Width="119px">
                <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" style="text-align: center; font-size: large; color: #FFFFFF; background-color: #FFFFFF;">
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
        </asp:Panel>
    <div class="auto-style2">
    
        <span class="auto-style1">
    
        <strong>
    
        <asp:ImageButton ID="btnHome" runat="server" Height="39px" ImageUrl="~/Imagens/main.png" PostBackUrl="~/StarPage.aspx" Width="46px" ImageAlign="Top" style="z-index: 1; left: 8px; top: 195px; position: absolute" CausesValidation="False" />
    
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:index.Properties.Settings.CS %>" ProviderName="<%$ ConnectionStrings:index.Properties.Settings.CS.ProviderName %>" SelectCommand="SELECT * FROM [Provas] WHERE ([Aluno] = ?) ORDER BY [Cod]" DeleteCommand="DELETE FROM Provas WHERE (Cod = newparameter)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="LblCodigo" Name="newparameter" PropertyName="Text" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Aluno" SessionField="SalvarSessao" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/Imagens/logo-unip-home.png" Width="414px" style="text-align: left; margin-left: 0px" />
    
        <br />
    
        </strong>
    
        </span>
    
        <br />
        <strong>&nbsp;&nbsp;&nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Font-Size="20pt" Text="CONTROLE DE PROVAS E TRABALHOS" style="color: #FFFFFF; z-index: 1; left: 250px; top: 252px; position: absolute;"></asp:Label>
        </strong></div>
        &nbsp;<table class="auto-style11">
            <tr>
                <td class="auto-style3">
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" CssClass="modal-content" Font-Size="15pt" Text="Selecione a linha desejada, digite a nota DP e Clique em Calcular" ToolTip="SELECIONE A LINHA DESEJADA"></asp:Label>
&nbsp;
                </td>
                <td class="auto-style4">&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtDp" runat="server"  BackColor="White" Height="31px" Width="102px" ForeColor="Red" BorderStyle="Double" Enabled="False" Font-Size="20pt" ToolTip="SELECIONE A LINHA DESEJADA (Deve possuir notas lançadas)" MaxLength="3"></asp:TextBox>
                    <strong>&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtDp" CssClass="auto-style8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCalcular" runat="server" CssClass="btn-success disabled focus" EnableViewState="False" Text="Calcular" Enabled="False" OnClick="BtnCalcular_Click" ToolTip="SELECIONE A LINHA DESEJADA (Deve possuir notas lançadas)" Font-Bold="True" Font-Size="X-Large" style="left: 929px; top: 304px; width: 160px; height: 52px" />
                </td>
                <td class="auto-style7">
                    <strong>
                    <asp:Label ID="lnlNtDP" runat="server" CssClass="auto-style9" Text="Nota DP -&gt;"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="grdListarProvas" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Cod" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="text-align: left" Width="1107px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDataBound="grdListarProvas_RowDataBound">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                <asp:BoundField DataField="Cod" HeaderText="Cód." ReadOnly="True" SortExpression="Cod" InsertVisible="False" />
                <asp:BoundField DataField="Materia" HeaderText="Matéria" SortExpression="Materia" />
                <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                <asp:BoundField DataField="Observacao" HeaderText="Observação" SortExpression="Observacao" />
                <asp:BoundField DataField="ValorP1" HeaderText="Valor P1" SortExpression="ValorP1" />
                <asp:BoundField DataField="ValorP2" HeaderText="Valor P2" SortExpression="ValorP2" />
                <asp:BoundField DataField="ValorP3" HeaderText="Valor P3" SortExpression="ValorP3" />
                <asp:BoundField DataField="ValorP4" HeaderText="Valor P4" SortExpression="ValorP4" />
                <asp:BoundField DataField="T1" HeaderText="Valor T1" SortExpression="T1" />
                <asp:BoundField DataField="T2" HeaderText="Valor T2" SortExpression="T2" />
                <asp:BoundField DataField="ResultadoMediaProvas" HeaderText="Média Parcial" SortExpression="ResultadoMediaProvas" />
                <asp:BoundField DataField="NotaDP" HeaderText="Nota DP" SortExpression="NotaDP" />
                <asp:BoundField DataField="MediaFinal" HeaderText="Média Final" SortExpression="MediaFinal" />
                <asp:BoundField DataField="Aluno" HeaderText="Aluno" SortExpression="Aluno" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <p style="margin-left: 680px;" class="auto-style6">
            &nbsp;&nbsp;
            </p>
                &nbsp;&nbsp;<asp:Button ID="btnCancelar" runat="server" CausesValidation="False" Height="46px" OnClick="Button1_Click1" PostBackUrl="~/ListarProvas.aspx" Text="Cancelar edição" Visible="False" Width="145px" />
                &nbsp;
        <asp:Button ID="BtnExcluir" runat="server" CssClass="btn-danger disabled focus" Height="46px" OnClick="BtnExcluir_Click" Text="Excluir registro" Visible="False" Width="172px" CausesValidation="False" />
        <cc1:ConfirmButtonExtender ID="BtnExcluir_ConfirmButtonExtender" runat="server" BehaviorID="BtnExcluir_ConfirmButtonExtender" ConfirmText="Confirma Exclusão ?" TargetControlID="BtnExcluir">
        </cc1:ConfirmButtonExtender>
                <asp:Button ID="btnCadastrarNota" runat="server" CausesValidation="False" CssClass="auto-style12" Font-Bold="True" Font-Size="Large" Height="46px" OnClick="Button1_Click" PostBackUrl="~/CadastroProvas.aspx" Text="Cadastrar nova nota" Width="207px" />
        <br />
         </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:Label ID="lblSessao" runat="server" Visible="False" BackColor="#FFFF66"></asp:Label>
    &nbsp;<asp:Label ID="LblResultadoMediaProvas" runat="server" BackColor="#99FF99" Visible="False"></asp:Label>
        <asp:Label ID="LblMediaFinal" runat="server" BackColor="Red" Visible="False"></asp:Label>
        <asp:Label ID="LblEstado" runat="server" BackColor="#0066FF" Visible="False"></asp:Label>
        <asp:Label ID="LblCodigo" runat="server" BackColor="#99FF66" Visible="False"></asp:Label>
    </form>
</body>
</html>

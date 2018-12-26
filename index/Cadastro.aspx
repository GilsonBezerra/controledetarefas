<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="index.Cadastro" Culture="auto" UICulture="auto" %>

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
            font-size: x-large;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            color: #FFFFFF;
            margin-left: 40px;
            background-color: #808080;
            text-align: center;
            height: 19px;
            width: 982px;
        }
        .auto-style10 {
            width: 100%;
            height: 139px;
        }
        .auto-style11 {
            width: 538px;
        }
         #form1 {
             height: 1108px;
             width: 1177px;
         }
         .auto-style12 {
         }
         .auto-style13 {
             height: 20px;
         }
         .auto-style14 {
             height: 83px;
         }
        .auto-style5 {
            z-index: 1;
            left: 8px;
            top: 12px;
            position: absolute;
            height: 100px;
            width: 119px;
        }
         .auto-style15 {
             color: #33CC33;
         }
         .auto-style16 {
             width: 616px;
         }
         .auto-style17 {
             width: 46px;
         }
        </style>
</head>
<body style="height: 960px; background-color: #BDB76B; width: 1196px; margin-left: 50px; margin-right: auto;">
   
    <form id="form1" runat="server">
    <div style="color: #BDB76B; height: 1114px; background-color: #BDB76B; width: 1177px;"auto-style4">
    
            <strong><span class="auto-style1"><asp:Label ID="lblSessao" runat="server" style="z-index: 1; left: 170px; top: 195px; position: absolute" Visible="False"></asp:Label>
    
        </span></strong>
    
            <span class="auto-style1">
    
            <strong>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnHome" runat="server" ImageUrl="~/Imagens/main.png" PostBackUrl="~/StarPage.aspx" CausesValidation="False" ImageAlign="Top" style="z-index: 1; left: 78px; top: 167px; position: absolute; height: 44px; width: 52px; right: 857px;" />
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/Imagens/logo-unip-home.png" Width="414px" style="text-align: center; margin-left: a" />
    
            <br />
    
        </strong>
    
        </span>
    
            </p>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true">
            </asp:ScriptManager>

     
        <table class="auto-style10">
            <tr>
                <td colspan="2">
                   <center class="auto-style16"> <strong><span class="label label-danger lead" style="font-size: larger">Cadastro de Tarefas</span></strong></td>
                </center>
                <td class="auto-style11">
                 <center>   
                     <asp:Label ID="Label2" class="label label-info lead"   runat="server" Text="Lista de Tarefas"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                </td></center>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <br />
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="BtnNova" runat="server" CssClass="btn-success" Height="43px" OnClick="BtnNova_Click" Text="Nova tarefa" Width="133px" Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong style="text-align: center">
                    <asp:Label ID="lblDataEntrega" runat="server" Text="Data Entrega" ForeColor="White"></asp:Label>
                    </strong></td>
                <td class="auto-style11">
                    <asp:RadioButton ID="RbTodas" runat="server" AutoPostBack="True" ForeColor="White" GroupName="x" OnCheckedChanged="RbTodas_CheckedChanged" Text="Todas" />
                    <asp:RadioButton ID="RbVencidas" runat="server" AutoPostBack="True" Checked="True" ForeColor="White" GroupName="x" OnCheckedChanged="RbVencidas_CheckedChanged" Text="Vencidas" />
                    <asp:RadioButton ID="RbAVencer" runat="server" AutoPostBack="True" ForeColor="White" GroupName="x" Text="À Vencer nos próximos 5 dias" OnCheckedChanged="RbAVencer_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    </td>
            </tr>
            <tr>
                <td colspan="2" class="text-left"><strong style="text-align: center">&nbsp;<asp:TextBox ID="txtDataEntrega"  runat ="server" OnTextChanged="txtDataEntrega_TextChanged" Width="70%" ReadOnly="True">01/11/2017</asp:TextBox>
                    </strong>
                </td>
                   
                <td class="auto-style11" rowspan="11" style="vertical-align: top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Cod" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="520px" Height="129px" ShowFooter="True" ShowHeaderWhenEmpty="True" Visible="False" EmptyDataText="Nenhuma Tarefa Encontrada">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                            <ControlStyle Font-Size="XX-Small" />
                            </asp:CommandField>
                            <asp:BoundField DataField="Cod" HeaderText="Cod" InsertVisible="False" ReadOnly="True" SortExpression="Cod" />
                            <asp:BoundField DataField="DataLimite" DataFormatString="{0:d}" HeaderText="Limite" NullDisplayText=" " SortExpression="DataLimite" />
                            <asp:BoundField DataField="DataEntrega" DataFormatString="{0:d}" HeaderText="Entrega" HtmlEncode="False" NullDisplayText=" " SortExpression="DataEntrega" />
                            <asp:BoundField DataField="Nome" HeaderText="Titulo" SortExpression="Nome" HtmlEncode="False" NullDisplayText=" " />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" HtmlEncode="False" NullDisplayText=" " />
                            <asp:BoundField DataField="Observacao" HeaderText="Obs" SortExpression="Observacao" HtmlEncode="False" NullDisplayText=" " >
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Aluno" HeaderText="Aluno" SortExpression="Aluno" HtmlEncode="False" NullDisplayText=" " />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" Wrap="True" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Cod" DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" Visible="False" Width="516px" EmptyDataText="Nenhuma Tarefa Encontrada" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="Cod" HeaderText="Cod" InsertVisible="False" ReadOnly="True" SortExpression="Cod" />
                            <asp:BoundField DataField="DataLimite" DataFormatString="{0:d}" HeaderText="Limite" HtmlEncode="False" SortExpression="DataLimite" />
                            <asp:BoundField DataField="DataEntrega" DataFormatString="{0:d}" HeaderText="Entrega" HtmlEncode="False" SortExpression="DataEntrega" />
                            <asp:BoundField DataField="Nome" HeaderText="Titulo" SortExpression="Nome" />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                            <asp:BoundField DataField="Observacao" HeaderText="Obs" SortExpression="Observacao" />
                            <asp:BoundField DataField="Aluno" HeaderText="Aluno" SortExpression="Aluno" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" DataKeyNames="Cod" DataSourceID="SqlDataSource3" GridLines="Horizontal" BorderStyle="None" EmptyDataText="Nenhuma Tarefa Encontrada" OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="516px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="Cod" HeaderText="Cod" InsertVisible="False" ReadOnly="True" SortExpression="Cod" />
                            <asp:BoundField DataField="DataLimite" HeaderText="Limite" SortExpression="DataLimite" DataFormatString="{0:d}" HtmlEncode="False" NullDisplayText=" " />
                            <asp:BoundField DataField="DataEntrega" HeaderText="Entrega" SortExpression="DataEntrega" DataFormatString="{0:d}" HtmlEncode="False" NullDisplayText=" " />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                            <asp:BoundField DataField="Observacao" HeaderText="Obs" SortExpression="Observacao" />
                            <asp:BoundField DataField="Aluno" HeaderText="Aluno" SortExpression="Aluno" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="BtnExcluir" runat="server" CssClass="btn-success " OnClick="BtnExcluir_Click" Text="Excluir Tarefa Selecionada" Visible="False" />
                    <cc1:ConfirmButtonExtender ID="BtnExcluir_ConfirmButtonExtender" runat="server" BehaviorID="BtnExcluir_ConfirmButtonExtender" ConfirmText="Confirma Exclusão desta Tarefa?" TargetControlID="BtnExcluir" />
                    <br />
    
                <strong>
            <asp:Label ID="LblInfo" runat="server" Font-Size="Larger" ForeColor="#33CC33" CssClass="auto-style15"></asp:Label>
            </strong>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style13">
            
          <asp:Label ID="Label1" runat="server" Text="Data Limite" ForeColor="Red"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;<span class="auto-style3"><asp:TextBox ID="TxtDtLimite"   runat="server" OnTextChanged="TxtDtLimite_TextChanged" Width="70%" ReadOnly="True"></asp:TextBox>
                    <br />
                    <cc1:CalendarExtender ID="TxtDtLimite_CalendarExtender" runat="server" BehaviorID="TxtDtLimite_CalendarExtender" TargetControlID="TxtDtLimite">
                    </cc1:CalendarExtender>
                    </span>
            
                </td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="2">
            
          <asp:Label ID="Label5" runat="server" Text="Titulo da Tarefa" ForeColor="White"></asp:Label>
                    <br />
        <asp:TextBox ID="txtNome" runat="server" Height="16px"  style="text-align: left" Width="70%"  Font-Bold="False" ForeColor="White" MaxLength="30" Enabled="False"></asp:TextBox>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style12">
            
          <asp:Label ID="Label4" runat="server" Text="Descrição" ForeColor="White"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="text-left">
        <asp:TextBox ID="txtDescr" runat="server"   Height="53px" Width="61%" Font-Bold="False" ForeColor="White" MaxLength="30" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style12">:<asp:Label ID="Label3" runat="server" Text="Observação" ForeColor="White"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    </td>
                <td class="auto-style12">
        <asp:TextBox ID="txtObs"  runat="server" Height="77px" Width="70%" Rows="5" style="text-align: left" CssClass="auto-style3" Font-Bold="False" ForeColor="White" MaxLength="30" Enabled="False" TextMode="MultiLine"></asp:TextBox>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGrava" runat="server" CssClass="btn-success" Height="43px" OnClick="BtnGrava_Click" Text="Gravar dados" Width="130px" Visible="False" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCancelar" runat="server" CssClass="btn-success" Height="43px" OnClick="BtnCancelar_Click" Text="Cancelar" Width="111px" Visible="False" Font-Bold="True" />
    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
                  <center>  </center>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtCod" runat="server" BackColor="#FF3300" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p style="margin-left: 40px; background-color: #808080; height: 179px;" class="auto-style8">
            <span class="auto-style3">
        <br />
            </span>
            <span class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:index.Properties.Settings.CS %>" ProviderName="<%$ ConnectionStrings:index.Properties.Settings.CS.ProviderName %>" SelectCommand="SELECT * FROM [Tarefas] WHERE ([Aluno] = ?) ORDER BY [DataLimite]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblSessao" Name="Aluno" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
        <br />
            </span><br class="auto-style3" />
    
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:index.Properties.Settings.CS %>" ProviderName="<%$ ConnectionStrings:index.Properties.Settings.CS.ProviderName %>" SelectCommand="SELECT * FROM [Tarefas] WHERE (([DataLimite] &lt;= ?) AND ([Aluno] = ?)) ORDER BY [DataLimite]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtDataEntrega" Name="DataLimite2" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="lblSessao" Name="Aluno" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:index.Properties.Settings.CS %>" ProviderName="<%$ ConnectionStrings:index.Properties.Settings.CS.ProviderName %>" SelectCommand="SELECT * FROM [Tarefas] WHERE (([DataEntrega] &gt;= ?) AND ([DataLimite] &lt;= ?) AND ([Aluno] = ?)) ORDER BY [DataLimite]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtDataEntrega" Name="DataEntrega" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="TxtAcrescimoDias" Name="DataLimite" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="lblSessao" Name="Aluno" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    
        </p>
            <p style="margin-left: 40px; background-color: #808080; height: 179px;" class="auto-style8">
                <asp:TextBox ID="TxtAcrescimoDias" runat="server" BackColor="Red" ForeColor="White" Visible="False"></asp:TextBox>
    
        </p>
            <p style="margin-left: 40px; background-color: #808080; height: 179px;" class="auto-style8">
                &nbsp;</p>
        <p class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
        </p>
        <p class="auto-style8">
            &nbsp;</p>
        <p class="auto-style8">
        <br />
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
        </p>
        <p style="margin-left: 40px" class="auto-style8">
            &nbsp;</p>
        <p style="margin-left: 40px" class="auto-style8">
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
            </p>
    
    </div>
    </form>
    </form>
</body>
</html>

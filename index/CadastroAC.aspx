<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroAC.aspx.cs" Inherits="index.CadastroAC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
            width: 1036px;
        }
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            color: #FFFFFF;
            z-index: 1;
            left: 79px;
            top: 169px;
            position: absolute;
        }
        .auto-style5 {
            z-index: 1;
            left: 8px;
            top: 13px;
            position: absolute;
            height: 100px;
            width: 119px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 692px;
            height: 492px;
            position: absolute;
            top: 272px;
            left: 405px;
            z-index: 1;
        }
        .auto-style9 {
            color: #FFFFFF;
            font-size: x-large;
            position: absolute;
            top: 234px;
            left: 15px;
            z-index: 1;
        }
        .auto-style10 {
            color: #000;
            font-size: x-large;
            position: absolute;
            top: 214px;
            left: 583px;
            z-index: 1;
        }
        .auto-style11 {
            color: #FF0000;
            position: absolute;
            top: 251px;
            left: 429px;
            z-index: 1;
        }
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        </style>
</head>
<body style="background-color: #BDB76B">
    <form id="form1" runat="server">
        <div class="auto-style6">
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
    
        <asp:ImageButton ID="btnHome" runat="server" Height="39px" ImageUrl="~/Imagens/main.png" PostBackUrl="~/StarPage.aspx" Width="46px" ImageAlign="Top" style="z-index: 1; left: 22px; top: 163px; position: absolute" CausesValidation="False" />
    
        <strong>
        <span class="auto-style1">
    
        <asp:Label ID="lblSessao" runat="server" CssClass="auto-style2" Visible="False"></asp:Label>
    
        </span></strong>
    
        <span class="auto-style1">
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/Imagens/logo-unip-home.png" Width="414px" style="text-align: center; margin-left: 16px" />
    
        </strong>
    
        </span>
    
    </div>
            <div class="auto-style6">
                <br />
                <br /><strong>
                <asp:Label ID="lblTituloCadastro" runat="server" BackColor="#BDB76B" CssClass="auto-style9" ForeColor="Black" Text="Cadastro"></asp:Label>
                <asp:Label ID="Label1" runat="server" BackColor="#BDB76B" CssClass="auto-style10" Text="Lista de Atividades lançadas"></asp:Label>
                <br /></strong>
                <br />
                <asp:Label ID="lblAviso" runat="server" CssClass="auto-style11" Text="Para 100% de aproveitamento é necessário somar 120 horas complementares até o final do curso"></asp:Label>
                <br />
                <asp:Label ID="lblCod" runat="server" style="color: #FFFFFF" Text="Escola / Empresa responsável:"></asp:Label>
                <br />
                <asp:TextBox ID="txtCod" runat="server" Height="22px" Width="355px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valEscola" runat="server" ControlToValidate="txtCod" CssClass="auto-style12" ErrorMessage="Preencha: Escola / Empresa responsável">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblTipoAtv" runat="server" style="color: #FFFFFF" Text="Tipo da atividade / nome do curso:"></asp:Label>
                <br />
                <asp:TextBox ID="txtTipoAtv" runat="server" Height="22px" Width="355px" ToolTip="EX: Curso; vídeo aula, Atividade cultural, etc."></asp:TextBox>
                <asp:RequiredFieldValidator ID="valTipoATV" runat="server" ControlToValidate="txtTipoAtv" CssClass="auto-style12" ErrorMessage="Preencha: Tipo da atividade / nome do curso:">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblCarga" runat="server" style="color: #FFFFFF" Text="Carga Horária Total:"></asp:Label>
                <br />
                <asp:TextBox ID="txtCarga" runat="server" Height="22px" Width="56px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valCarga" runat="server" ControlToValidate="txtCarga" CssClass="auto-style12" ErrorMessage="Preencha: Carga Horária Total:">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblObs" runat="server" style="color: #FFFFFF" Text="Descrição da atividade:"></asp:Label>
                <br />
                <asp:TextBox ID="txtObs" runat="server" Height="111px" TextMode="MultiLine" Width="355px" ToolTip="DESCREVA AQUI TODAS AS ATIVIDADES, DETALHES DA ATIVIDADE REALIZADA"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valObs" runat="server" ControlToValidate="txtObs" CssClass="auto-style12" ErrorMessage="Preencha: Descriação da atividade">*</asp:RequiredFieldValidator>
                <br />
                <br />&nbsp;&nbsp;
                <asp:ImageButton ID="btnCadAtv" runat="server" Height="30px" ImageUrl="~/Imagens/addCad.png" OnClick="btnCadAtv_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="btnLimpar" runat="server" Height="31px" ImageUrl="~/Imagens/eraser.png" OnClick="btnLimpar_Click1" Width="70px" CausesValidation="False" />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style13" Height="56px" ShowMessageBox="True" ShowSummary="False" ToolTip="erro" Width="379px" />
                <br />&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="lblEfetivaCadastro" runat="server" style="color: #009933; font-size: x-large"></asp:Label>
                <asp:Label ID="lblErroCadastro" runat="server" style="color: #FF0000; font-size: x-large"></asp:Label>
                <br />
                <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod" DataSourceID="SqlDataSource2" ForeColor="#333333" Width="633px" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" CancelText="Cancelar" DeleteText="Apagar" EditText="Editar" ShowDeleteButton="True" UpdateText="Atualizar" InsertVisible="False" ShowCancelButton="False" />
                            <asp:BoundField DataField="Cod" HeaderText="Escola/Empresa" ReadOnly="True" SortExpression="Cod" />
                            <asp:BoundField DataField="TipoAtv" HeaderText="Tipo Atividade" SortExpression="TipoAtv" />
                            <asp:BoundField DataField="Carga" HeaderText="Carga horária" SortExpression="Carga" />
                            <asp:BoundField DataField="Obs" HeaderText="Descrição" SortExpression="Obs" />
                            <asp:BoundField DataField="Aluno" HeaderText="Aluno" SortExpression="Aluno" ReadOnly="True" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BaseConnectionString2 %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:BaseConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [AtvCompl] WHERE ([Aluno] = ?)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [AtvCompl] WHERE [Cod] = ? AND (([TipoAtv] = ?) OR ([TipoAtv] IS NULL AND ? IS NULL)) AND (([Carga] = ?) OR ([Carga] IS NULL AND ? IS NULL)) AND (([Obs] = ?) OR ([Obs] IS NULL AND ? IS NULL)) AND (([Aluno] = ?) OR ([Aluno] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [AtvCompl] ([Cod], [TipoAtv], [Carga], [Obs], [Aluno]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE [AtvCompl] SET [TipoAtv] = ?, [Carga] = ?, [Obs] = ?, [Aluno] = ? WHERE [Cod] = ? AND (([TipoAtv] = ?) OR ([TipoAtv] IS NULL AND ? IS NULL)) AND (([Carga] = ?) OR ([Carga] IS NULL AND ? IS NULL)) AND (([Obs] = ?) OR ([Obs] IS NULL AND ? IS NULL)) AND (([Aluno] = ?) OR ([Aluno] IS NULL AND ? IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod" Type="String" />
                            <asp:Parameter Name="original_TipoAtv" Type="String" />
                            <asp:Parameter Name="original_TipoAtv" Type="String" />
                            <asp:Parameter Name="original_Carga" Type="String" />
                            <asp:Parameter Name="original_Carga" Type="String" />
                            <asp:Parameter Name="original_Obs" Type="String" />
                            <asp:Parameter Name="original_Obs" Type="String" />
                            <asp:Parameter Name="original_Aluno" Type="String" />
                            <asp:Parameter Name="original_Aluno" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Cod" Type="String" />
                            <asp:Parameter Name="TipoAtv" Type="String" />
                            <asp:Parameter Name="Carga" Type="String" />
                            <asp:Parameter Name="Obs" Type="String" />
                            <asp:Parameter Name="Aluno" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="Aluno" SessionField="SalvarSessao" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TipoAtv" Type="String" />
                            <asp:Parameter Name="Carga" Type="String" />
                            <asp:Parameter Name="Obs" Type="String" />
                            <asp:Parameter Name="Aluno" Type="String" />
                            <asp:Parameter Name="original_Cod" Type="String" />
                            <asp:Parameter Name="original_TipoAtv" Type="String" />
                            <asp:Parameter Name="original_TipoAtv" Type="String" />
                            <asp:Parameter Name="original_Carga" Type="String" />
                            <asp:Parameter Name="original_Carga" Type="String" />
                            <asp:Parameter Name="original_Obs" Type="String" />
                            <asp:Parameter Name="original_Obs" Type="String" />
                            <asp:Parameter Name="original_Aluno" Type="String" />
                            <asp:Parameter Name="original_Aluno" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SelectAtividadesCompl" runat="server"></asp:SqlDataSource>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </asp:Panel>
                <br />
            </div>
        </div>
    </form>
</body>
</html>

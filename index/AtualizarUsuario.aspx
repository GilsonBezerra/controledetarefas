<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AtualizarUsuario.aspx.cs" Inherits="index.AtualizarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: large;
            text-align: center;
            color:black;
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
            text-align: left;
            width: 500px;
            height: 166px;
            position: absolute;
            top: 248px;
            left: 281px;
            z-index: 1;
        }
        .auto-style7 {
            font-size: large;
        }
        </style>
</head>
<body style="color: white; background-color: #BDB76B; width: 1041px;">
    <form id="form1" runat="server">
        <p style="text-align: center">
    
        <asp:ImageButton ID="btnHome" runat="server" Height="39px" ImageUrl="~/Imagens/main.png" PostBackUrl="~/StarPage.aspx" Width="46px" ImageAlign="Top" style="z-index: 1; left: 20px; top: 173px; position: absolute" />
    
        <span class="auto-style1">
    
        <strong>
    
        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/Imagens/logo-unip-home.png" Width="414px" style="text-align: left; margin-left: 0px" />
    
        </strong>
    
        </span>
    
        </p>
        <p class="auto-style1">
            <strong style="font-size: x-large">Atualize seus dados</strong></p>
        <p style="text-align: left">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="auto-style6">
                <strong>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="DarkGray" BorderColor="#E7E7FF" BorderStyle="Double" BorderWidth="10px" CellPadding="3" DataKeyNames="cod" DataSourceID="AtualizaUsuario" Height="96px" Width="498px" CssClass="auto-style7" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:CommandField ButtonType="Button" CancelText="Cancelar" EditText="Editar" ShowEditButton="True" UpdateText="Atualizar" />
                    <asp:BoundField DataField="cod" HeaderText="Usuário" ReadOnly="True" SortExpression="cod" />
                    <asp:BoundField DataField="Senha" HeaderText="Senha" SortExpression="Senha" />
                    <asp:BoundField DataField="Email" HeaderText="E-mail" SortExpression="Email" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Fone" HeaderText="Fone" SortExpression="Fone" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
                </strong>
            </div>
        </p>
        <p>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Width="119px">
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" style="text-align: center; font-size: large; color: #FFFFFF; background-color: #FFFFFF;">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="Acesso rápido" Value="Acesso rápido">
                        <asp:MenuItem NavigateUrl="~/AtualizarUsuario.aspx" Text="Alterar dados cadastrais" Value="Alterar dados cadastrais"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/CadastroAC.aspx" Text="Minhas tarefas" Value="Minhas tarefas"></asp:MenuItem>
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
            <asp:SqlDataSource ID="AtualizaUsuario" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SelectUsuario %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [cod] = ? AND (([Senha] = ?) OR ([Senha] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Nome] = ?) OR ([Nome] IS NULL AND ? IS NULL)) AND (([Fone] = ?) OR ([Fone] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Usuarios] ([cod], [Senha], [Email], [Nome], [Fone]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SelectUsuario.ProviderName %>" SelectCommand="SELECT * FROM [Usuarios] WHERE ([cod] = ?)" UpdateCommand="UPDATE [Usuarios] SET [Senha] = ?, [Email] = ?, [Nome] = ?, [Fone] = ? WHERE [cod] = ? AND (([Senha] = ?) OR ([Senha] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Nome] = ?) OR ([Nome] IS NULL AND ? IS NULL)) AND (([Fone] = ?) OR ([Fone] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_cod" Type="String" />
                    <asp:Parameter Name="original_Senha" Type="String" />
                    <asp:Parameter Name="original_Senha" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter Name="original_Fone" Type="String" />
                    <asp:Parameter Name="original_Fone" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cod" Type="String" />
                    <asp:Parameter Name="Senha" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Fone" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="cod" SessionField="SalvarSessao" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Senha" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Fone" Type="String" />
                    <asp:Parameter Name="original_cod" Type="String" />
                    <asp:Parameter Name="original_Senha" Type="String" />
                    <asp:Parameter Name="original_Senha" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter Name="original_Fone" Type="String" />
                    <asp:Parameter Name="original_Fone" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SelectUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:SelectUsuario %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SelectUsuario.ProviderName %>" SelectCommand="SELECT * FROM [Usuarios] WHERE ([cod] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="cod" SessionField="SalvarSessao" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>

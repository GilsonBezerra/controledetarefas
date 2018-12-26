using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

namespace index
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.AppSettings["conn"]);


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void LimparCampoText(Control controle)
        {
            foreach (Control ctle in controle.Controls)
            {
                if (ctle is TextBox)
                {
                    ((TextBox)ctle).Text = string.Empty;
                }
                else if (ctle.Controls.Count > 0)
                {
                    LimparCampoText(ctle);
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarUser_Click(object sender, ImageClickEventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("SELECT * FROM [Usuarios] WHERE [Cod] <> '" + txtCod.Text + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            try
            {
                OleDbDataAdapter da2 = new OleDbDataAdapter("Insert into [Usuarios] values  ('" + txtCod.Text + "','" + txtSenha.Text + "','" + txtEmail.Text + "','" + txtNome.Text + "','" + txtFone.Text + "')", con);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                try
                {
                    LimparCampoText(this);
                    lblEfetivaCadastro.Text = "Usuário cadastrado com sucesso, faça o login aqui--> ";
                    lblErroCadastro.Text = "";
                    lblErroCadastro1.Text = "";
                    lblErroCadastro2.Text = "";


                }
                catch (Exception)
                {
                    lblErroCadastro.Text = "USUARIO JÁ CADASTRADO ";
                    lblEfetivaCadastro.Text = "";
                    lblErroCadastro.Text = "";
                }
            }
            catch
            {
                lblErroCadastro.Text = "USUÁRIO NÃO CADASTRADO --> Duas situações prováveis:";
                lblErroCadastro1.Text = "*Usuário já existe no banco de dados";
                lblErroCadastro2.Text = "*Voce não tem direito de gravação no diretório C:/ProgramaCurso/DB...";
                lblEfetivaCadastro.Text = "";

            }
        }
    }
}

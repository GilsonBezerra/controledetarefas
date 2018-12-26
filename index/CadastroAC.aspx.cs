using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Data;

namespace index
{
    public partial class CadastroAC : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.AppSettings["conn"]);

        private void RecuperarSessao()
        {
            try
            {
                lblSessao.Text = Session["SalvarSessao"].ToString();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            RecuperarSessao();
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


        

        protected void btnCadAtv_Click(object sender, ImageClickEventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("SELECT * FROM [AtvCompl] WHERE [Cod] <> '" + txtCod.Text + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            try
            {
                OleDbDataAdapter da2 = new OleDbDataAdapter("Insert into [AtvCompl] values  ('" + txtCod.Text + "','" + txtTipoAtv.Text + "','" + txtCarga.Text + "','" + txtObs.Text + "', '" + lblSessao.Text + "')", con);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                
                try
                {
                       Response.Redirect("CadastroAC.aspx");
                }
                catch (Exception)
                {
                    lblErroCadastro.Text = "Ocorreu um erro no cadastro! Verifique os dados e tente novamente ou verifique o acesso ao banco de dados!";
                    lblEfetivaCadastro.Text = "";
                 }
            }
            catch
            {
                lblErroCadastro.Text = "Ocorreu um erro no cadastro! Verifique os dados e tente novamente ou verifique o acesso ao banco de dados!";
                lblEfetivaCadastro.Text = "";

            }
        }

        protected void btnVerAtv_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CadastroAC.aspx");
        }

        protected void btnLimpar_Click1(object sender, ImageClickEventArgs e)
        {
            LimparCampoText(this);
            lblErroCadastro.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {


        }
    }
}

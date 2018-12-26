using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Authentication;
using System.Data;


namespace index
{
    public partial class IndexLogin : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.AppSettings["conn"]);

        private void SalvarSessao()
        {
            try
            {
                Session["SalvarSessao"] = this.txtCod.Text;
                this.txtCod.Text = "Arquivo salvo na Session!";
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("SELECT * FROM [Usuarios] WHERE [Cod]='" + txtCod.Text + "' AND [Senha] = '" + txtSenha.Text + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                SalvarSessao();
                Response.Redirect("StarPage.aspx");
                lblEfetivaLogin.Text = "";
            }
            else
            {
                lblEfetivaLogin.Text = "Dados incorretos, Verifique e tente novamente!";
            }
        }
    }
    }



   





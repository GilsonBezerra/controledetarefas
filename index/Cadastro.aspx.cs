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
    public partial class Cadastro : System.Web.UI.Page
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

            txtDataEntrega.Text = DateTime.Now.Date.ToShortDateString();






            if (!Page.IsPostBack)
            {

                CarregaVencidas();

            }

            else

            {
                GridView2.DataBind();
                GridView1.DataBind();
                GridView3.DataBind();


            }



            // adiciona 5 dia a mais na data atual 

            // vamos obter a data de hoje
            DateTime hoje = DateTime.Now;


            // vamos adicionar 1 dias à data de hoje
            DateTime data_futura = hoje.AddDays(5);
            
           
            TxtAcrescimoDias.Text = Convert.ToString(data_futura);

            
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
        protected void btnLimpar_Click(object sender, ImageClickEventArgs e)
        {
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void btnListaCadastro_Click(object sender, EventArgs e)
        {
        }
        protected void txtCod_TextChanged(object sender, EventArgs e)
        {
        }
        protected void btnEfetivaCadastro_Click(object sender, EventArgs e)
        {
        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
        }
        protected void txtDataEntrega_TextChanged(object sender, EventArgs e)
        {
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
        }

        protected void btnLimpar_Click1(object sender, ImageClickEventArgs e)
        {
            LimparCampoText(this);
        }

        protected void btnCadastrarTarefa_Click(object sender, ImageClickEventArgs e)
        {
            


            OleDbConnection Con = new OleDbConnection();
            Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='D:\FACUL\UNIP\3º SEMESTRE\PIM VIII\PIM VIII\PIM VIII- Projeto Pratico\Projeto\Banco de dados\Base.mdb';Persist Security Info=True";

            try
            {
                Con.Open();
                OleDbCommand Comando = new OleDbCommand();
                Comando.CommandType = System.Data.CommandType.Text;
                Comando.CommandText = "INSERT INTO Tarefas (DataEntrega, Nome, Descricao, Observacao, Aluno, DataLimite)  " +
                                      " VALUES ( ?, ?, ?, ?, ?,? )";

                Comando.Parameters.AddWithValue("@DataEntrega", txtDataEntrega.Text);
                Comando.Parameters.AddWithValue("@Nome", txtNome.Text);
                Comando.Parameters.AddWithValue("@Descricao", txtDescr.Text);
                Comando.Parameters.AddWithValue("@Observacao", txtObs.Text);
                Comando.Parameters.AddWithValue("@Aluno", lblSessao.Text);
                Comando.Parameters.AddWithValue("@DataLimite", TxtDtLimite.Text);


                Comando.Connection = Con;

                Comando.ExecuteNonQuery();
                LblInfo.Text = "Dados Gravados com sucesso";

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                LblInfo.Text = string.Format("Erro : {0}", ex.Message);
                
                Con.Close();

            }
                      
        }

        protected void TxtDtLimite_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            #region "Deixa invisível a coluna"
            switch (e.Row.RowType)
            {
                case DataControlRowType.Header:
                    e.Row.Cells[1].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[1].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[1].Visible = false;
                    break;
            }
            #endregion

            #region "Deixa invisível a coluna"
            switch (e.Row.RowType)
            {
                case DataControlRowType.Header:
                    e.Row.Cells[7].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[7].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[7].Visible = false;
                    break;
            }
            #endregion





        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TxtCod.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);

            BtnExcluir.Visible = true;


        }

        protected void BtnExcluir_Click(object sender, EventArgs e)
        {

            OleDbConnection Con = new OleDbConnection();
            //Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='C:\PIMVIII\BD\Base.mdb';Persist Security Info=True";

            Con.ConnectionString = Properties.Settings.Default.CS;

            try
            {
                Con.Open();
                OleDbCommand Cmm = new OleDbCommand();
                Cmm.CommandText = "DELETE FROM Tarefas WHERE (Cod = @p1) ";
                Cmm.Parameters.Clear();
                Cmm.Parameters.AddWithValue("@p1", TxtCod.Text);

                Cmm.CommandType = CommandType.Text;
                Cmm.Connection = Con;
                Cmm.ExecuteNonQuery();

                LblInfo.Text = "Tarefa excluida com sucesso !";

                Con.Close();


                GridView1.DataBind();
                GridView2.DataBind();
                GridView3.DataBind();

                BtnExcluir.Visible = false;


            }

            catch (Exception ex)
            {

                LblInfo.Text = "Erro interno, por favor tente novamente:" + ex.Message;
            }

        }

        protected void BtnGrava_Click(object sender, EventArgs e)
        {


           

            if (txtDataEntrega.Text == "")
            {
                txtDataEntrega.Text = DateTime.Now.Date.ToShortDateString();
            }

            if (TxtDtLimite.Text == "")
            {
                LblInfo.Text = "Campos Data, Titulo e Descrição Obrigatórios !";
            }


            if (txtNome.Text == "" || txtDescr.Text == "")
            {
                LblInfo.Text = "Campos Data, Titulo e Descrição Obrigatórios !";
            }

            else
            {
                
                OleDbConnection Con = new OleDbConnection();
                Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='D:\FACUL\UNIP\3º SEMESTRE\PIM VIII\PIM VIII\PIM VIII- Projeto Pratico\Projeto\Banco de dados\Base.mdb';Persist Security Info=True";

                try
                {
                    Con.Open();
                    OleDbCommand Comando = new OleDbCommand();
                    Comando.CommandType = System.Data.CommandType.Text;
                    Comando.CommandText = "INSERT INTO Tarefas (DataEntrega, Nome, Descricao, Observacao, Aluno, DataLimite)  " +
                                          " VALUES ( ?, ?, ?, ?, ?,? )";

                    Comando.Parameters.AddWithValue("@DataEntregax", txtDataEntrega.Text);
                    Comando.Parameters.AddWithValue("@Nome", txtNome.Text);
                    Comando.Parameters.AddWithValue("@Descricao", txtDescr.Text);
                    Comando.Parameters.AddWithValue("@Observacao", txtObs.Text);
                    Comando.Parameters.AddWithValue("@Aluno", lblSessao.Text);
                    Comando.Parameters.AddWithValue("@DataLimite", TxtDtLimite.Text);


                    Comando.Connection = Con;

                    Comando.ExecuteNonQuery();
                    LimparCampos();
                    LblInfo.Text = "Dados Gravados com sucesso";

                    GridView1.DataBind();
                    GridView2.DataBind();
                    GridView3.DataBind();

                    this.BtnNova.Visible = true;
                    BtnGrava.Visible = false;
                    BtnCancelar.Visible = false;

                    DesabilitaCampos();

                }
                catch (Exception ex)
                {
                    LblInfo.Text = string.Format("Erro : {0}", ex.Message);

                    Con.Close();


                }

            }

        }

        protected void BtnNova_Click(object sender, EventArgs e)
        {
            HabilitaCampos();
            LimparCampos();

            this.BtnNova.Visible = false;           
            BtnGrava.Visible = true;            
            BtnCancelar.Visible = true;


           
            txtDataEntrega.Focus();
        }

        private void LimparCampos()
        {

            txtDataEntrega.Text = DateTime.Now.Date.ToShortDateString();
            txtNome.Text = "";
            txtDescr.Text = "";
            txtObs.Text= "";
            TxtDtLimite.Text = "";

            LblInfo.Text = "";


        }


        private void HabilitaCampos()

        {
            txtDataEntrega.ReadOnly = false;
            txtNome.Enabled = true;
            txtDescr.Enabled = true;
            txtObs.Enabled = true;
            TxtDtLimite.ReadOnly = false;
        }

        private void DesabilitaCampos()

        {
            txtDataEntrega.ReadOnly = true;
            txtNome.Enabled = false;
            txtDescr.Enabled = false;
            txtObs.Enabled = false;
            TxtDtLimite.ReadOnly = true;
        }



        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            LimparCampos();
            LblInfo.Text = "";
            DesabilitaCampos();
            BtnNova.Visible = true;
            BtnGrava.Visible = false;
            this.BtnCancelar.Visible = false;


        }

        protected void RbTodas_CheckedChanged(object sender, EventArgs e)
        {

            GridView1.DataBind();
           
            GridView1.Visible = true;
            GridView2.Visible = false;
            GridView3.Visible = false;

            BtnExcluir.Visible = false;
            LblInfo.Text = "";
        }



        protected void RbVencidas_CheckedChanged(object sender, EventArgs e)
        {
            CarregaVencidas();

            BtnExcluir.Visible = false;
            LblInfo.Text = "";
        }

        private void CarregaVencidas()
        {

            GridView2.Visible = true;
            GridView1.Visible = false;
            GridView3.Visible = false;

           // System.Media.SoundPlayer player = new System.Media.SoundPlayer();

            //player.SoundLocation = "c:/PIMVIII/notify.wav";
            //player.Play();




        }



        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            #region "Deixa invisível a coluna"
            switch (e.Row.RowType)
            {
                case DataControlRowType.Header:
                    e.Row.Cells[1].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[1].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[1].Visible = false;
                    break;
            }
            #endregion

            #region "Deixa invisível a coluna"
            switch (e.Row.RowType)
            {
                case DataControlRowType.Header:
                    e.Row.Cells[7].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[7].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[7].Visible = false;
                    break;
            }
            #endregion


        }

        protected void RbAVencer_CheckedChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = true;

            BtnExcluir.Visible = false;
            LblInfo.Text = "";
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            #region "Deixa invisível a coluna"
            switch (e.Row.RowType)
            {
                case DataControlRowType.Header:
                    e.Row.Cells[1].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[1].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[1].Visible = false;
                    break;
            }
            #endregion
            

            #region "Deixa invisível a coluna"
            switch (e.Row.RowType)
            {
                case DataControlRowType.Header:
                    e.Row.Cells[7].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[7].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[7].Visible = false;
                    break;
            }
            #endregion
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TxtCod.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[1].Text);

            BtnExcluir.Visible = true;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TxtCod.Text = HttpUtility.HtmlDecode(GridView3.SelectedRow.Cells[1].Text);

            BtnExcluir.Visible = true;
        }
    }
    }


    

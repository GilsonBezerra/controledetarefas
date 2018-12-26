using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Drawing;

namespace index
{
    public partial class ListarProvas : System.Web.UI.Page
    {

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


        // variaveis globais

        int DP;
        int ResultadoMediaProvas;
        int MediaFinal;



        protected void Page_Load(object sender, EventArgs e)
        {
            RecuperarSessao();


        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            LblResultadoMediaProvas.Text = HttpUtility.HtmlDecode(grdListarProvas.SelectedRow.Cells[11].Text);

            LblCodigo.Text = HttpUtility.HtmlDecode(grdListarProvas.SelectedRow.Cells[1].Text);


            BtnCalcular.Enabled = true;
            TxtDp.Enabled = true;
            BtnExcluir.Visible = true;
            btnCancelar.Visible = true;
            


        }


        protected void grdListarProvas_RowDataBound(object sender, GridViewRowEventArgs e)
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
                    e.Row.Cells[14].Visible = false;
                    break;
                case DataControlRowType.DataRow:
                    e.Row.Cells[14].Visible = false;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[14].Visible = false;
                    break;
            }
            #endregion


            //cria o laço if que decide a cor da linha da tabela

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // determina o valor do campo Estado

                string status = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Estado"));

                // se o campo status tiver o valor "Aberto"

                if (status == "Reprovado!")
                {
                    // pinta o fundo da linha de vermelho

                    e.Row.BackColor = Color.Red;
                }

                // se o campo status tiver o valor "Aprovado"

                if (status == "Aprovado!")
                {
                    // pinta o fundo da linha de verde

                    e.Row.BackColor = Color.Green;
                }

            }
        }




        protected void BtnCalcular_Click(object sender, EventArgs e)
        {

            VerificaNotaDPeCalcula();
        }


        protected void VerificaNotaDPeCalcula()
        {

            int DP = Convert.ToInt32(TxtDp.Text);
            int ResultadoMediaProvas = Convert.ToInt32(LblResultadoMediaProvas.Text);
            int MediaFinal = (ResultadoMediaProvas + DP) / 2;

            LblMediaFinal.Text = Convert.ToString(MediaFinal);

            if (MediaFinal < 50)

            {

                UpdateDPMediaFinaleEstadoReprovado();
                Response.Redirect("Comunicado2.html");
            }

            else
            {

                UpdateDPMediaFinaleEstadoAprovado();
                Response.Redirect("Comunicado3.html");

            }

            
        }

        protected void UpdateDPMediaFinaleEstadoReprovado()
        {

            LblEstado.Text = "Reprovado!";

            OleDbConnection Con = new OleDbConnection();
            Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='D:\FACUL\UNIP\3º SEMESTRE\PIM VIII\PIM VIII\PIM VIII- Projeto Pratico\Projeto\Banco de dados\Base.mdb';Persist Security Info=True";

            Con.Open();
            OleDbCommand Comando = new OleDbCommand();
            Comando.CommandText = "UPDATE Provas SET NotaDP = @NotaDP, MediaFinal = @MediaFinal, Estado = @Estado WHERE Cod = @Codigo";

            Comando.Parameters.Clear();

            Comando.Parameters.Add("@NotaDP", OleDbType.Integer).Value = TxtDp.Text;
            Comando.Parameters.Add("@MediaFinal", OleDbType.Integer).Value = LblMediaFinal.Text;
            Comando.Parameters.Add("@Estado", OleDbType.VarChar).Value = LblEstado.Text;
            Comando.Parameters.Add("@Codigo", OleDbType.Integer).Value = LblCodigo.Text;

            Comando.Connection = Con;
            Comando.ExecuteNonQuery();
            Con.Close();



        }

        protected void UpdateDPMediaFinaleEstadoAprovado()
        {

            LblEstado.Text = "Aprovado!";

            OleDbConnection Con = new OleDbConnection();
            Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='D:\FACUL\UNIP\3º SEMESTRE\PIM VIII\PIM VIII\PIM VIII- Projeto Pratico\Projeto\Banco de dados\Base.mdb';Persist Security Info=True";

            Con.Open();
            OleDbCommand Comando = new OleDbCommand();
            Comando.CommandText = "UPDATE Provas SET NotaDP = @NotaDP, MediaFinal = @MediaFinal, Estado = @Estado WHERE Cod = @Codigo";

            Comando.Parameters.Clear();

            Comando.Parameters.Add("@NotaDP", OleDbType.Integer).Value = TxtDp.Text;
            Comando.Parameters.Add("@MediaFinal", OleDbType.Integer).Value = LblMediaFinal.Text;
            Comando.Parameters.Add("@Estado", OleDbType.VarChar).Value = LblEstado.Text;
            Comando.Parameters.Add("@Codigo", OleDbType.Integer).Value = LblCodigo.Text;

            Comando.Connection = Con;
            Comando.ExecuteNonQuery();
            Con.Close();




        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnExcluir_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            this.BtnExcluir.Visible = false;
            Response.Redirect("ListarProvas.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ListarProvas.aspx");
        }

        }
    }


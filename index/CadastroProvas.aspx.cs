using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace index
{
    public partial class CadastroProvas : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.AppSettings["conn"]);
        const int MEDIA_FINAL = 6;

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

        public void LimparCampoDrop(Control controle)
        {
            foreach (Control ctle2 in controle.Controls)
            {
                if (ctle2 is DropDownList)
                {
                    ((DropDownList)ctle2).Text = string.Empty;
                }
                else if (ctle2.Controls.Count > 0)
                {
                    LimparCampoDrop(ctle2);
                }
            }
        }

        protected void btnCadastrarProva_Click(object sender, ImageClickEventArgs e)
        {

            int a = Convert.ToInt32(txtNP1.Text);
            int b = Convert.ToInt32(txtNP2.Text);
            int c = Convert.ToInt32(txtNP3.Text);
            int d = Convert.ToInt32(txtNP4.Text);
            int ee = Convert.ToInt32(txtT1.Text);
            int f = Convert.ToInt32(txtT2.Text);

            int calc1 = a * 2;
            int calc2 = b * 2;
            int calc3 = c * 1;
            int calc4 = d * 1;
            int calc5 = ee * 2;
            int calc6 = f * 2;


            int MediaProvas = calc1 + calc2 + calc3 + calc4 + calc5 + calc6;
            int ResultadoMediaProvas = MediaProvas / 10;
            

            //  LblResultadoMediaProvas.Text = Convert.ToString(ResultadoMediaProvas);


            if (ResultadoMediaProvas < MEDIA_FINAL)

            {

                GravaNotasInicial();
                Response.Redirect("Comunicado.html");

            }

            if (ResultadoMediaProvas > MEDIA_FINAL)

            {

                GravaNotasInicialPassou();
                Response.Redirect("Comunicado3.html");

            }

            if (ResultadoMediaProvas == MEDIA_FINAL)

            {

                GravaNotasInicialPassou();
                Response.Redirect("Comunicado3.html");

            }


        }


        protected void GravaNotasInicial()
        {
            LblEstado.Text = "Ficou para DP!";


            int a = Convert.ToInt32(txtNP1.Text);
            int b = Convert.ToInt32(txtNP2.Text);
            int c = Convert.ToInt32(txtNP3.Text);
            int d = Convert.ToInt32(txtNP4.Text);
            int ee = Convert.ToInt32(txtT1.Text);
            int f = Convert.ToInt32(txtT2.Text);

            int calc1 = a * 2;
            int calc2 = b * 2;
            int calc3 = c * 1;
            int calc4 = d * 1;
            int calc5 = ee * 2;
            int calc6 = f * 2;


            int MediaProvas = calc1 + calc2 + calc3 + calc4 + calc5 + calc6;
            int ResultadoMediaProvas = MediaProvas / 10;

            
            OleDbConnection Con = new OleDbConnection();
            Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='D:\FACUL\UNIP\3º SEMESTRE\PIM VIII\PIM VIII\PIM VIII- Projeto Pratico\Projeto\Banco de dados\Base.mdb';Persist Security Info=True";

            Con.Open();
            OleDbCommand Comando = new OleDbCommand();
            Comando.CommandType = System.Data.CommandType.Text;
            Comando.CommandText = "INSERT INTO Provas (Materia, Professor, Observacao, ValorP1, ValorP2, ValorP3, ValorP4, T1, T2, ResultadoMediaProvas, Aluno, Estado )  " +
                                  " VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";

            Comando.Parameters.AddWithValue("@Materia", drpMateria.Text);
            Comando.Parameters.AddWithValue("@Professor", drpProf.Text);
            Comando.Parameters.AddWithValue("@Observacao", TxtObs.Text);
            Comando.Parameters.AddWithValue("@ValorP1", Convert.ToInt32(a));
            Comando.Parameters.AddWithValue("@ValorP2", Convert.ToInt32(b));
            Comando.Parameters.AddWithValue("@ValorP3", Convert.ToInt32(c));
            Comando.Parameters.AddWithValue("@ValorP4", Convert.ToInt32(d));
            Comando.Parameters.AddWithValue("@T1", Convert.ToInt32(ee));
            Comando.Parameters.AddWithValue("@T2", Convert.ToInt32(f));
            Comando.Parameters.AddWithValue("@ResultadoMediaProvas", Convert.ToInt32(ResultadoMediaProvas));
            Comando.Parameters.AddWithValue("@Aluno", lblSessao.Text);
            Comando.Parameters.AddWithValue("@Estado", LblEstado.Text);

            Comando.Connection = Con;

            Comando.ExecuteNonQuery();
          
               
        }


        protected void GravaNotasInicialPassou()
        {
            LblEstado.Text = "Aprovado!";


            int a = Convert.ToInt32(txtNP1.Text);
            int b = Convert.ToInt32(txtNP2.Text);
            int c = Convert.ToInt32(txtNP3.Text);
            int d = Convert.ToInt32(txtNP4.Text);
            int ee = Convert.ToInt32(txtT1.Text);
            int f = Convert.ToInt32(txtT2.Text);

            int calc1 = a * 2;
            int calc2 = b * 2;
            int calc3 = c * 1;
            int calc4 = d * 1;
            int calc5 = ee * 2;
            int calc6 = f * 2;


            int MediaProvas = calc1 + calc2 + calc3 + calc4 + calc5 + calc6;
            int ResultadoMediaProvas = MediaProvas / 10;



            OleDbConnection Con = new OleDbConnection();
            Con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source='D:\FACUL\UNIP\3º SEMESTRE\PIM VIII\PIM VIII\PIM VIII- Projeto Pratico\Projeto\Banco de dados\Base.mdb';Persist Security Info=True";

            Con.Open();
            OleDbCommand Comando = new OleDbCommand();
            Comando.CommandType = System.Data.CommandType.Text;
            Comando.CommandText = "INSERT INTO Provas (Materia, Professor, Observacao, ValorP1, ValorP2, ValorP3, ValorP4, T1, T2, ResultadoMediaProvas, MediaFinal, NotaDP, Aluno, Estado )  " +
                                  " VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";

            Comando.Parameters.AddWithValue("@Materia", drpMateria.Text);
            Comando.Parameters.AddWithValue("@Professor", drpProf.Text);
            Comando.Parameters.AddWithValue("@Observacao", TxtObs.Text);
            Comando.Parameters.AddWithValue("@ValorP1", Convert.ToInt32(a));
            Comando.Parameters.AddWithValue("@ValorP2", Convert.ToInt32(b));
            Comando.Parameters.AddWithValue("@ValorP3", Convert.ToInt32(c));
            Comando.Parameters.AddWithValue("@ValorP4", Convert.ToInt32(d));
            Comando.Parameters.AddWithValue("@T1", Convert.ToInt32(ee));
            Comando.Parameters.AddWithValue("@T2", Convert.ToInt32(f));
            Comando.Parameters.AddWithValue("@ResultadoMediaProvas", Convert.ToInt32(ResultadoMediaProvas));
            Comando.Parameters.AddWithValue("@MediaFinal", Convert.ToInt32(ResultadoMediaProvas));
            Comando.Parameters.AddWithValue("@NotaDP", '0');
            Comando.Parameters.AddWithValue("@Aluno", lblSessao.Text);
            Comando.Parameters.AddWithValue("@Estado", LblEstado.Text);
            

            Comando.Connection = Con;

            Comando.ExecuteNonQuery();


        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        LimparCampoText(this);
        LimparCampoDrop(this);
        lblMedia.Text = "";
        LblResultadoMediaProvas.Text = "";
        lblEfetivaCadastro.Text = "";
        lblErroCadastro.Text = "";
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ListarProvas.aspx");
    }

        protected void drpMateria_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
      
    }


 }

    





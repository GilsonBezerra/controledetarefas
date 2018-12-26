using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace Conexao
{
    class Conexao
    {
        // vamos nos conectar à base de dados
       
        private static string connString = @"Provider = Microsoft.Jet.OLEDB.4.0; Data Source = C:\PIMVIII\BD\Base.mdb; Persist Security Info = True";

        // representa a conexão com o banco
        private static OleDbConnection conn = null;

        // método que permite obter a conexão
        public static OleDbConnection obterConexao()
        {
            // vamos criar a conexão
            conn = new OleDbConnection(connString);

            // a conexão foi feita com sucesso?
            try
            {
                // abre a conexão e a devolve ao chamador do método
                conn.Open();
            }
            catch (Exception)
            {
                conn = null;
                // ops! o que aconteceu?
                // uma boa idéia aqui é gravar a exceção em um arquivo de log
            }

            return conn;
        }

        public static void fecharConexao()
        {
            if (conn != null)
            {
                conn.Close();
            }
        }
    }
}
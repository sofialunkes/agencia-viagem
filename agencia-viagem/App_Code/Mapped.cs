using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public class Mapped
{
    //IDbconnection = obj. de conexão usado
    //Método para abrir uma conexão MySql e retorna para o IDbConnection.
    public static IDbConnection Conexao()
    {
        IDbConnection con = new MySqlConnection(ConfigurationManager.AppSettings["strConexao"]);
        con.Open();
        return con;
    }

    //Para montar uma linha de conexao, preciso de uma conexao, entao é passada a Idbconnection Conexao
    public static IDbCommand Commando(string sql, IDbConnection Conexao)
    {
        //Cria linha de comando com a conexão aberta;
        IDbCommand com = Conexao.CreateCommand();
        com.CommandText = sql;
        return com;
    }

    //Pergunta que vai cair no P.I: Evitar injeção SQL. 
    //object: porque pode ser qq tipo de objeto (string, int etc).
    public static IDbDataParameter Parametro(string nome, object valor)
    {
        return new MySqlParameter(nome, valor);
    }


    //IDbDataAdapter recebe uma coleção de dados genéricos;
    public static IDataAdapter Adapter(IDbCommand comando)
    {
        IDbDataAdapter adap = new MySqlDataAdapter();
        adap.SelectCommand = comando;
        return adap;
    }
}
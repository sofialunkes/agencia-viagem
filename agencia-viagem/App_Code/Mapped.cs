using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public class Mapped {
    //IDbconnection = obj. de conexão usado
    //Método para abrir uma conexão MySql e retorna para o IDbConnection.
    public static IDbConnection Connection() {
        IDbConnection conn = new MySqlConnection(ConfigurationManager.AppSettings["strConexao"]);
        conn.Open();
        return conn;
    }

    //Para montar uma linha de conexao, preciso de uma conexao, entao é passada a Idbconnection Conexao
    public static IDbCommand Command(string sql, IDbConnection Connection) {
        //Cria linha de comando com a conexão aberta;
        IDbCommand command = Connection.CreateCommand();
        command.CommandText = sql;
        return command;
    }

    //Pergunta que vai cair no P.I: Evitar injeção SQL. 
    //object: porque pode ser qq tipo de objeto (string, int etc).
    public static IDbDataParameter Parameter(string nome, object valor) {
        return new MySqlParameter(nome, valor);
    }


    //IDbDataAdapter recebe uma coleção de dados genéricos;
    public static IDataAdapter Adapter(IDbCommand command) {
        IDbDataAdapter adap = new MySqlDataAdapter();
        adap.SelectCommand = command;
        return adap;
    }
}
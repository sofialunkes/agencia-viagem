using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for ClienteBD
/// </summary>
public class ClienteBD {

    public static int Select(Cliente cliente) {
        int status = 0;
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataReader objDataReader;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM CLI_CLIENTE WHERE CLI_EMAIL = ?email AND CLI_SENHA = ?senha", objConexao);
        objCommand.Parameters.Add(Mapped.Parameter("?email", cliente.Email));
        objCommand.Parameters.Add(Mapped.Parameter("?senha", cliente.Senha));
        objDataReader = objCommand.ExecuteReader();
        while (objDataReader.Read()) {
            cliente.Codigo = Convert.ToInt32(objDataReader["CLI_CODIGO"]);
            cliente.Nome = Convert.ToString(objDataReader["CLI_NOME"]);
            cliente.Cpf = Convert.ToString(objDataReader["CLI_CPF"]);
            cliente.Telefone = Convert.ToString(objDataReader["CLI_TELEFONE"]);
        }
        objDataReader.Close();
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        objDataReader.Dispose();

        return status;
    }


    public static int Insert(Cliente cliente) {
        int retorno = 1;
        try {
            IDbConnection connection;
            IDbCommand command;
            StringBuilder sql = new StringBuilder();
            sql.Append("INSERT INTO CLI_CLIENTE(" +
                    "CLI_NOME, CLI_EMAIL, CLI_SENHA, CLI_CPF, CLI_TELEFONE)" +
            "VALUES(?1, ?2 ,?3, ?4, ?5);");
            connection = Mapped.Connection();
            command = Mapped.Command(sql.ToString(), connection);
            command.Parameters.Add(Mapped.Parameter("?1", cliente.Nome));
            command.Parameters.Add(Mapped.Parameter("?2", cliente.Email));
            command.Parameters.Add(Mapped.Parameter("?3", cliente.Senha));
            command.Parameters.Add(Mapped.Parameter("?4", cliente.Cpf));
            command.Parameters.Add(Mapped.Parameter("?5", cliente.Telefone));
            command.ExecuteNonQuery();
            connection.Close();
            command.Dispose();
            connection.Dispose();
        } catch (Exception) {
            retorno = -2;
        }
        return retorno;
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ClienteBD
/// </summary>
public class ClienteBD
{

    public static int Select(String email, String senha)
    {
        int status = 0;
        Cliente cliente = null;
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataReader objDataReader;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM CLI_CLIENTE WHERE CLI_EMAIL = ?email AND CLI_SENHA = ?senha", objConexao);
        objCommand.Parameters.Add(Mapped.Parameter("?email", email));
        objCommand.Parameters.Add(Mapped.Parameter("?senha", senha));
        objDataReader = objCommand.ExecuteReader();
        while (objDataReader.Read())
        {
            cliente = new Cliente();
            cliente.Codigo= Convert.ToInt32(objDataReader["CLI_CODIGO"]);
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
}
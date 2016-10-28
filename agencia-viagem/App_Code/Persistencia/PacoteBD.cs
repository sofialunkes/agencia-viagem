using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for PacoteBD
/// </summary>
public class PacoteBD {
    public static DataSet SelectAll() {
        IDbConnection objConnection;
        IDbCommand queryCommand;
        IDataAdapter objAdapter;
        DataSet ds = new DataSet();
        objConnection = Mapped.Connection();
        StringBuilder sql = new StringBuilder();
        sql.Append("SELECT PAC.PAC_CODIGO, PAC.PAC_DESCRICAO,");
        sql.Append("HOT.HOT_NOME, PAC.PAC_DATA_INICIO,       ");
        sql.Append("PAC.PAC_QTD_DIAS, PAC.PAC_VALOR          ");
        sql.Append("FROM PAC_PACOTE PAC, HOT_HOTEL HOT       ");
        sql.Append("WHERE HOT.HOT_CODIGO = PAC.HOT_CODIGO    ");
        sql.Append("ORDER BY PAC.PAC_CODIGO;                 ");
        queryCommand = Mapped.Command(sql.ToString(), objConnection);

        objAdapter = Mapped.Adapter(queryCommand);
        objAdapter.Fill(ds);

        objConnection.Close();
        queryCommand.Dispose();

        return ds;
    }

    public static int Insert(Pacote pacote) {
        int status = 0;
        try {
            IDbConnection connection;
            IDbCommand queryCommand;
            connection = Mapped.Connection();
            queryCommand = Mapped.Command("INSERT INTO PAC_PACOTE(PAC_DESCRICAO, PAC_DATA_INICIO, PAC_QTD_DIAS, PAC_VALOR, HOT_CODIGO) VALUES(?descricao, ?dtInicio, ?qtdDias, ?valor, ?hotel);", connection);
            queryCommand.Parameters.Add(Mapped.Parameter("?descricao", pacote.Descricao));
            queryCommand.Parameters.Add(Mapped.Parameter("?dtInicio", pacote.DataInicio));
            queryCommand.Parameters.Add(Mapped.Parameter("?qtdDias", pacote.QtdDias));
            queryCommand.Parameters.Add(Mapped.Parameter("?valor", pacote.Valor));
            queryCommand.Parameters.Add(Mapped.Parameter("?hotel", pacote.Hotel.Codigo));
            queryCommand.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            queryCommand.Dispose();

        } catch (Exception) {
            status = -2;
        }
        return status;
    }

    public static int Select(Pacote pacote) {
        int status = 0;

        IDbConnection connection;
        IDbCommand queryCommand;
        IDataReader reader;

        connection = Mapped.Connection();
        queryCommand = Mapped.Command("SELECT * FROM PAC_PACOTE WHERE PAC_CODIGO = ?codigo", connection);
        queryCommand.Parameters.Add(Mapped.Parameter("?nome", pacote.Codigo));

        reader = queryCommand.ExecuteReader();
        while (reader.Read()) {
            pacote.Descricao = Convert.ToString(reader["PAC_DESCRICAO"]);
            pacote.DataInicio = Convert.ToDateTime(reader["PAC_DATA_INICIO"]);
            pacote.QtdDias = Convert.ToInt32(reader["PAC_QTD_DIAS"]);
            pacote.Valor = Convert.ToDouble(reader["PAC_VALOR"]);
            pacote.Hotel.Codigo = Convert.ToInt32(reader["HOT_CODIGO"]);
        }
        reader.Close();
        connection.Close();
        queryCommand.Dispose();
        connection.Dispose();
        reader.Dispose();

        return status;
    }

    public static int Update(Pacote pacote) {
        int status = 0;
        try {
            IDbConnection connection;
            IDbCommand queryCommand;

            connection = Mapped.Connection();
            queryCommand = Mapped.Command("UPDATE PAC_PACOTE SET PAC_DESCRICAO = ?descricao, PAC_DATA_INICIO= ?dtInicio, PAC_QTD_DIAS=?qtdDias, PAC_VALOR=?valor, HOT_CODIGO=?hotel  WHERE PAC_CODIGO  =?codigo;", connection);
            queryCommand.Parameters.Add(Mapped.Parameter("?codigo", pacote.Codigo));
            queryCommand.Parameters.Add(Mapped.Parameter("?descricao", pacote.Descricao));
            queryCommand.Parameters.Add(Mapped.Parameter("?dtInicio", pacote.DataInicio));
            queryCommand.Parameters.Add(Mapped.Parameter("?qtdDias", pacote.QtdDias));
            queryCommand.Parameters.Add(Mapped.Parameter("?valor", pacote.Valor));
            queryCommand.Parameters.Add(Mapped.Parameter("?hotel", pacote.Hotel.Codigo));
            queryCommand.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            queryCommand.Dispose();

        } catch (Exception) {
            status = -2;
        }
        return status;
    }

    public static int Delete(int codigo) {
        int status = 0;
        try {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "DELETE FROM PAC_PACOTE WHERE PAC_PACOTE=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        } catch (Exception) {
            status = -2;
        }
        return status;
    }
}
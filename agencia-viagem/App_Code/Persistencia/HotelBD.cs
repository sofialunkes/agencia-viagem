using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HotelBD
/// </summary>
public class HotelBD {
    public static DataSet SelectAll() {
        IDbConnection objConnection;
        IDbCommand queryCommand;
        IDataAdapter objAdapter;
        DataSet ds = new DataSet();
        objConnection = Mapped.Connection();
        queryCommand = Mapped.Command("SELECT * FROM HOT_HOTEL order by HOT_NOME;", objConnection);

        objAdapter = Mapped.Adapter(queryCommand);
        objAdapter.Fill(ds);

        objConnection.Close();
        queryCommand.Dispose();

        return ds;
    }

    public static int Select(Hotel hotel) {
        int status = 0;

        IDbConnection connection;
        IDbCommand queryCommand;
        IDataReader reader;

        connection = Mapped.Connection();
        queryCommand = Mapped.Command("SELECT * FROM HOT_HOTEL WHERE HOT_NOME like  '%?nome%'", connection);
        queryCommand.Parameters.Add(Mapped.Parameter("?nome", hotel.Nome));

        reader = queryCommand.ExecuteReader();
        while (reader.Read()) {
            hotel.Codigo = Convert.ToInt32(reader["HOT_CODIGO"]);
            hotel.Nome = Convert.ToString(reader["HOT_NOME"]);
            hotel.Classificacao = Convert.ToInt32(reader["HOT_CLASSIFICACAO"]);
            hotel.Cidade = Convert.ToString(reader["HOT_CIDADE"]);
        }
        reader.Close();
        connection.Close();
        queryCommand.Dispose();
        connection.Dispose();
        reader.Dispose();

        return status;
    }

    public static int Insert(Hotel hotel) {
        int status = 0;
        try {
            IDbConnection connection;
            IDbCommand queryCommand;


            connection = Mapped.Connection();
            queryCommand = Mapped.Command("INSERT INTO HOT_HOTEL(HOT_NOME,HOT_CLASSIFICACAO, HOT_CIDADE) VALUES(?nome, ?classificacao, ?cidade);", connection);
            queryCommand.Parameters.Add(Mapped.Parameter("?nome", hotel.Nome));
            queryCommand.Parameters.Add(Mapped.Parameter("?classificacao", hotel.Classificacao));
            queryCommand.Parameters.Add(Mapped.Parameter("?cidade", hotel.Cidade));

            queryCommand.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            queryCommand.Dispose();

        }catch(Exception) {
            status = -2;
        }
        return status;        
    }

    public static int Delete(int codigo) {
        int status = 0;

        try {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "DELETE FROM hot_hotel WHERE hot_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        } catch (Exception ex) {
            status = -2;
        }
        return status;
    }
}
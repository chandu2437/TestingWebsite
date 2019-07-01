#define __TEST
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Util
/// </summary>
namespace common
{
    public class Utils
    {
        public static void executeQuery(string query, SqlConnection connection, object[] Params, object[] ParamVals)
        {
            if (!String.IsNullOrEmpty(query))
            {
                if (connection.State != ConnectionState.Open)
                    connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                for (int i = 0; i < Params.Length; i++)
                {
                    cmd.Parameters.AddWithValue(Params[i] as string, ParamVals[i]);
                }
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }
        public static int getIntValue(string query, SqlConnection connection, object[] Params, object[] ParamVals)
        {
            int id = 0;
            string cnt = string.Empty;
            if (!String.IsNullOrEmpty(query))
            {

                if (connection.State != ConnectionState.Open)
                    connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                for (int i = 0; i < Params.Length; i++)
                {
                    cmd.Parameters.AddWithValue(Params[i] as string, ParamVals[i]);
                }
                cnt = Convert.ToString(cmd.ExecuteScalar());
                connection.Close();
            }
            if (cnt != string.Empty)
                id = Convert.ToInt32(cnt);
            return id;
        }


        public static decimal getDecimalValue(string query, SqlConnection connection, object[] Params, object[] ParamVals)
        {
            decimal id = 0;
            if (!String.IsNullOrEmpty(query))
            {

                if (connection.State != ConnectionState.Open)
                    connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                for (int i = 0; i < Params.Length; i++)
                {
                    cmd.Parameters.AddWithValue(Params[i] as string, ParamVals[i]);
                }
                SqlDataReader myReader = cmd.ExecuteReader();
                if (myReader.HasRows)
                {
                    myReader.Read();
                    if (!myReader.IsDBNull(0))
                        id = myReader.GetDecimal(0);
                }
                myReader.Close();
                connection.Close();
            }
            return id;
        }


        public static int GetId(string getquery, SqlConnection connection, object[] Params, object[] ParamVals)
        {
            int id = 0;
            if (!String.IsNullOrEmpty(getquery))
            {
                SqlCommand cmd = new SqlCommand(getquery, connection);
                for (int i = 0; i < Params.Length; i++)
                {
                    cmd.Parameters.AddWithValue(Params[i] as string, ParamVals[i]);
                }
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                SqlDataReader myReader;
                myReader = cmd.ExecuteReader();
                if (myReader.HasRows)
                {
                    myReader.Read();
                    if (myReader.IsDBNull(0) == false)
                    {
                        id = myReader.GetInt32(0);
                    }
                }
                myReader.Close();
                connection.Close();
            }
            return id;
        }
        public static string GetScalarResult(string query, SqlConnection connection, object[] Params, object[] ParamVals)
        {
            string id = string.Empty;
            if (!String.IsNullOrEmpty(query))
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                for (int i = 0; i < Params.Length; i++)
                {
                    cmd.Parameters.AddWithValue(Params[i] as string, ParamVals[i]);
                }
                object result = cmd.ExecuteScalar();
                if (result != null)
                    id = result.ToString();
                connection.Close();
            }
            return id;
        }

        public static int GetId(string getquery, SqlConnection connection)
        {
            int id = 0;
            if (!string.IsNullOrEmpty(getquery))
            {
                SqlCommand myCommand = new SqlCommand(getquery, connection);
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                SqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                if (myReader.HasRows)
                {
                    myReader.Read();
                    if (myReader.IsDBNull(0) == false)
                    {
                        id = myReader.GetInt32(0);
                    }
                }
                myReader.Close();
                connection.Close();
            }
            return id;
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Website
{

    public class XLDL
    {
        public static string strCon = ConfigurationManager.ConnectionStrings["WebBanCayCanhConnectionString"].ConnectionString.ToString();
        public static DataTable GetData(string lenhSQL)
        {
            SqlConnection sqlCon = new SqlConnection(strCon);
            try
            {
                SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void Excute(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }
        public static string GetValue(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                string value = sqlCmd.ExecuteScalar().ToString();
                sqlCon.Close();
                return (value);
            }
        }
    }

}
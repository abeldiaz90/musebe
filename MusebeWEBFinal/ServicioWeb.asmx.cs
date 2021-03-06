﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Web.Script.Services;

namespace SISGRES
{
    /// <summary>
    /// Summary description for ServicioWeb
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ServicioWeb : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }


        [WebMethod(EnableSession = true)]
		public string[] BusquedaItems(string prefixText, int count)
        {

            List<string> NombresEmpleados = new List<string>();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["Conexion"].ToString();
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "Productos_Consultar_Items";
            //com.Parameters.AddWithValue("@ID_COMPAÑIA", Session["Compañia"].ToString());
            com.Parameters.AddWithValue("@Producto", prefixText);
            com.ExecuteNonQuery();
            SqlDataAdapter TablaDatos = new SqlDataAdapter(com);
            TablaDatos.Fill(dt);
			con.Close();
			for (int i = 0; i < dt.Rows.Count; i++)
                NombresEmpleados.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(string.Format("{0}", dt.Rows[i]["Descripcion"].ToString()), dt.Rows[i]["Descripcion"].ToString()));
            //NombresEmpleados.Add(dt.Rows[i][1].ToString());
            return NombresEmpleados.ToArray();

        }

		[WebMethod(EnableSession = true)]
	
		public string[] BusquedaItemsWeb(string prefixText, int count)
		{

			List<string> NombresEmpleados = new List<string>();
			SqlConnection con = new SqlConnection();
			con.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["Conexion"].ToString();
			con.Open();
			DataTable dt = new DataTable();
			SqlCommand com = new SqlCommand();
			com.Connection = con;
			com.CommandType = CommandType.StoredProcedure;
			com.CommandText = "Productos_Consultar_Visibles_Busquedas";
			//com.Parameters.AddWithValue("@ID_COMPAÑIA", Session["Compañia"].ToString());
			com.Parameters.AddWithValue("@Descripcion", prefixText);
			com.ExecuteNonQuery();
			SqlDataAdapter TablaDatos = new SqlDataAdapter(com);
			TablaDatos.Fill(dt);
			con.Close();
			for (int i = 0; i < dt.Rows.Count; i++)
				NombresEmpleados.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(string.Format("{0}", dt.Rows[i]["Descripcion"].ToString()), dt.Rows[i]["Descripcion"].ToString()));
			//NombresEmpleados.Add(dt.Rows[i][1].ToString());
			return NombresEmpleados.ToArray();

		}
	}
}

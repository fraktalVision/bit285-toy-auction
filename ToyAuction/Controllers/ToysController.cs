using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Sockets;
using System.Web.Http;
using ToyAuction.Models;

namespace ToyAuction.Controllers
{
    public class ToysController : ApiController
    {
	    public Toy[] toys = init();

	    static private Toy[] init()
	    {
		    int toyCount;

		    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["toyDBContext"].ConnectionString);
			conn.Open();

		    string qryCount = "SELECT count(*) FROM Toys";
		    SqlCommand cmdCount = new SqlCommand(qryCount, conn);
		    toyCount = (int)cmdCount.ExecuteScalar();
			Toy[] temp = new Toy[toyCount];

		    string qryData = "SELECT * FROM Toys";
			SqlCommand cmdData = new SqlCommand(qryData, conn);
		    SqlDataReader drData = cmdData.ExecuteReader();

		    int i = 0;
		    while (drData.Read())
			{ 
			    int ord = drData.GetOrdinal("ToyID");
			    temp[i++] = new Toy()
			    {
				    ToyID = drData.GetInt32(ord),
				    Name = drData.GetString(ord + 1),
				    NumLegs = drData.GetInt32(ord + 2),
				    ColorID = drData.GetInt32(ord + 3),
				    OwnerID = drData.GetInt32(ord + 4)
			    };
		    }
			drData.Close();
			conn.Close();

		    return temp;
	    }

	    public IEnumerable<Toy> GetAllToys()
	    {
		    return toys;
	    }

	    public IHttpActionResult GetToy(int id)
	    {
		    var toy = toys.FirstOrDefault((t) => t.ToyID == id);

		    if (toy == null)
			    return NotFound();

		    return Ok(toy);
	    }
    }
}

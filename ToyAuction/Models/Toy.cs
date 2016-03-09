using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToyAuction.Models
{
	public class Toy
	{
		public int ToyID { get; set; }
		public String Name { get; set; }
		public int NumLegs { get; set; }
		public int ColorID { get; set; }
		public int OwnerID { get; set; }
	}
}

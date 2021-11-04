using System.Collections.Generic;

namespace Data.Models
{
    public class Truck
    {
		public int TruckID { get; set; }
		public TruckModel TruckModel { get; set; }
		public TruckBrand TruckBrand { get; set; }
		public int Year { get; set; }
		public string VIN { get; set; }
		public string LicencePlate { get; set; }
		public Enterprise Enterprise { get; set; }
		public int TruckAttributtesID { get; set; }
		public IEnumerable<TruckDocument> Documents { get; set; }
	}
}

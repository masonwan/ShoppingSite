using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;
using System.Runtime.Serialization;

namespace ShoppingSite.Models.Json
{
	public class StoreJson
	{
		[DataMember(Name = "id")]
		public int Id { get; set; }

		[DataMember(Name = "name")]
		public string Name { get; set; }

		[DataMember(Name = "address")]
		public string Address { get; set; }

		[DataMember(Name = "lat")]
		public double Latitude { get; set; }

		[DataMember(Name = "long")]
		public double Longitude { get; set; }

		[DataMember(Name = "hasIndoor")]
		public bool HasIndoor { get; set; }

		[DataMember(Name = "hasOutdoor")]
		public bool HasOutdoor { get; set; }

		[DataMember(Name = "hasStreet")]
		public bool HasStreet { get; set; }

		[DataMember(Name = "taxRate")]
		public double TaxRate { get; set; }

		[DataMember(Name = "phone")]
		public string Phone { get; set; }

		public static implicit operator StoreJson(Store store)
		{
			return new StoreJson()
			{
				Id = store.Id,
				Name = store.Name,
				Phone = store.Phone,
				Address = store.Address,
				Latitude = store.Latitude,
				Longitude = store.Longitude,
				HasIndoor = store.HasIndoor,
				HasOutdoor = store.HasOutdoor,
				HasStreet = store.HasStreet,
				TaxRate = store.TaxRate,
			};
		}
	}
}
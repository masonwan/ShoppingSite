using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingSite.Models
{
	public static class Constants
	{
		public const int NUM_ITEMS_PER_PAGE = 20;
		public const string ITEM_ID_TABLE = "ItemTable";
		public static readonly string[] DEPARTMENT_OPTIONS = new string[] { "All", "Men", "Women", "Boys", "Girls", };
	}
}
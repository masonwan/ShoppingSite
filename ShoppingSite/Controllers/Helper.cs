using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShoppingSite.Controllers;

namespace System.Web.Mvc
{
	public static partial class Helper
	{
		public static Dictionary<int, int> GetItemIdTable(HttpContextBase context)
		{
			var table = context.Session[Constants.ITEM_ID_TABLE] as Dictionary<int, int>;

			if (table == null)
			{
				context.Session[Constants.ITEM_ID_TABLE] = table = new Dictionary<int, int>();
			}

			return table;
		}

		public static void SetItemIdTable(HttpContextBase context, Dictionary<int, int> table)
		{
			context.Session[Constants.ITEM_ID_TABLE] = table;
		}
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text;
using ShoppingSite.Models;

namespace ShoppingSite.Controllers
{
	public class CartController : BaseController
	{
		const string ITEM_ID_TABLE = "ItemIdTable";

		public ActionResult Index()
		{
			var itemIdTable = Session[ITEM_ID_TABLE] as Dictionary<int, int> ?? new Dictionary<int, int>();
			var itemsTable = new Dictionary<Item, int>(itemIdTable.Count);

			foreach (var pair in itemIdTable)
			{
				var item = DB.Items.Find(pair.Key);
				itemsTable.Add(item, pair.Value);
			}

			return View(itemsTable);
		}

		[HttpPost]
		public ActionResult SetItems()
		{
			var itemIdTable = Session[ITEM_ID_TABLE] as Dictionary<int, int>;

			if (itemIdTable == null)
			{
				itemIdTable = new Dictionary<int, int>();
			}

			var idText = Request.Form["ItemId"];
			var qtyText = Request.Form["Quantity"];
			int itemId, quantity;

			if (int.TryParse(idText, out itemId) && int.TryParse(qtyText, out quantity))
			{
				if (false == itemIdTable.ContainsKey(itemId))
				{
					itemIdTable.Add(itemId, quantity);
				}
			}

			Session[ITEM_ID_TABLE] = itemIdTable;

			return RedirectToAction("Index");
		}
	}
}

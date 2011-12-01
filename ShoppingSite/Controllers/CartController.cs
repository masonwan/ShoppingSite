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
		public ActionResult Index()
		{
			var itemIdTable = Helper.GetItemIdTable(HttpContext);
			var itemsTable = new Dictionary<Item, int>(itemIdTable.Count);

			foreach (var pair in itemIdTable)
			{
				var item = DB.Items.Find(pair.Key);
				itemsTable.Add(item, pair.Value);
			}

			return View(itemsTable);
		}

		public ActionResult Payment()
		{
			return View();
		}

		[HttpPost]
		public ActionResult SetOrder()
		{
			throw new NotImplementedException();
		}

		[HttpPost]
		public ActionResult SetItems()
		{
			var itemIdTable = Helper.GetItemIdTable(HttpContext);

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

			Helper.SetItemIdTable(HttpContext, itemIdTable);

			return RedirectToAction("Index");
		}

		//[HttpDelete]
		public ActionResult RemoveItem(int? itemId)
		{
			if (itemId != null)
			{
				var id = itemId.Value;
				var itemIdTable = Helper.GetItemIdTable(HttpContext);

				if (itemIdTable.ContainsKey(id))
				{
					itemIdTable.Remove(id);
				}
			}

			return RedirectToAction("Index");
		}
	}
}

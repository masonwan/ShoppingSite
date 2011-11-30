using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;
using ShoppingSite.Models;

namespace ShoppingSite.Controllers
{
	public class ItemController : BaseController
	{
		// TODO: gather the item info.

		public ActionResult Index(int? itemId)
		{
			var item = DB.Items.Find(itemId);

			if (item == null)
			{
				return new HttpNotFoundResult("The item cannot be found");
			}

			ViewData["categories"] = DB.Categories.ToList();

			return View(item);
		}
	}
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShoppingSite.Models;

namespace ShoppingSite.Controllers
{
	public class SaleController : BaseController
	{
		public ActionResult Index(int? page)
		{
			page = page ?? 1;

			IEnumerable<Item> items = DB.Items.Where(i => i.Discount.HasValue);

			var itemsFiltered = items.OrderBy(i => i.Id).Skip((page.Value - 1) * Constants.NUM_ITEMS_PER_PAGE).Take(Constants.NUM_ITEMS_PER_PAGE);
			var totalPages = (items.Count() - 1) / Constants.NUM_ITEMS_PER_PAGE + 1;

			if (page > totalPages)
			{
				return HttpNotFound();
			}

			ViewBag.Page = page.Value;
			ViewBag.TotalPages = totalPages;

			return View(itemsFiltered);
		}
	}
}

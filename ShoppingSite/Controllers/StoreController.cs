using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShoppingSite.Models.Json;

namespace ShoppingSite.Controllers
{
	public class StoreController : BaseController
	{
		public ActionResult Index()
		{
			return View(DB.Stores.ToList());
		}

		[HttpGet]
		public JsonResult GetStores()
		{
			try
			{
				var storeJsons = new List<StoreJson>(DB.Stores.Count());

				foreach (var store in DB.Stores)
				{
					storeJsons.Add((StoreJson)store);
				}

				return Json(storeJsons, JsonRequestBehavior.AllowGet);
			}
			catch (Exception ex)
			{
				return Json(ex.Message, JsonRequestBehavior.AllowGet);
			}
		}
	}
}

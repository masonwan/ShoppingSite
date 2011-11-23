using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShoppingSite.Controllers
{
	public class DepartmentController : BaseController
	{
		public ActionResult Index(int? categoryId = 1)
		{
			var category =  DB.Categories.Find(categoryId.Value);

			if (category == null)
			{
				categoryId = 1;
			}

			ViewBag.Categories = DB.Categories;
			ViewBag.CategoryId = categoryId;

			return View();
		}
	}
}

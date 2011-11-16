using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShoppingSite.Models;

namespace ShoppingSite.Controllers
{
	public abstract class BaseController : Controller
	{
		protected ShoppingSiteEntities DB = new ShoppingSiteEntities();

		protected override void Dispose(bool disposing)
		{
			DB.Dispose();
			base.Dispose(disposing);
		}
	}
}

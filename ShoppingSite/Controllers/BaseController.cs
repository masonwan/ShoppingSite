using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShoppingSite.Models;
using System.Net;

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

		protected override void OnException(ExceptionContext filterContext)
		{
			if (Request.IsAjaxRequest())
			{
				filterContext.ExceptionHandled = true;
				Response.StatusCode = (int)HttpStatusCode.InternalServerError;
				filterContext.Result = Json(new { error = filterContext.Exception.Message }, JsonRequestBehavior.AllowGet);
			}

			base.OnException(filterContext);
		}

		public int MyProperty { get; set; }
	}
}

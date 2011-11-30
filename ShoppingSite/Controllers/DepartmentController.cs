using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text;
using ShoppingSite.Models;

namespace ShoppingSite.Controllers
{
	public class DepartmentController : BaseController
	{
		public ActionResult Index(int? departmentId = 1, int? categoryId = 1)
		{
			var department = DB.Departments.Find(departmentId.Value);
			var category = DB.Categories.Find(categoryId.Value);

			if (department == null || category == null)
			{
				return new HttpNotFoundResult();
			}

			ViewBag.Categories = DB.Categories.ToList();
			ViewBag.Department = department;
			ViewBag.Category = category;

			return View(department);
		}
	}
}

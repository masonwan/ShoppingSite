using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShoppingSite.Models;
using System.Text;

namespace ShoppingSite.Controllers
{
	public class SearchController : BaseController
	{
		[HttpPost]
		public ActionResult Index()
		{
			var department = Request.Form["department"];
			var query = Request.Form["query"];

			return RedirectToAction("Result", new { Query = query, Page = 1, Department = department });
		}

		public ActionResult Result(string department, string query, int? page)
		{
			department = department ?? "All";
			query = query ?? "";
			page = page ?? 1;

			IEnumerable<Item> itemsToSearch;
			var matchedDepartment = DB.Departments.FirstOrDefault(d => d.Name == department);

			if (matchedDepartment == null || department == "All")
			{
				itemsToSearch = DB.Items;
			}
			else
			{
				itemsToSearch = matchedDepartment.Items;
			}

			var itemsFound = from item in itemsToSearch
							 where item.Name.ToLower().Contains(query.ToLower())
							 orderby item.Id
							 select item;
			var itemsUsed = itemsFound.Skip((page.Value - 1) * Constants.NUM_ITEMS_PER_PAGE).Take(Constants.NUM_ITEMS_PER_PAGE);
			var totalPages = (itemsFound.Count() - 1) / Constants.NUM_ITEMS_PER_PAGE + 1;

			if (page > totalPages)
			{
				return HttpNotFound();
			}

			ViewBag.DepartmentSearched = department;
			ViewBag.Department = matchedDepartment;
			ViewBag.Query = query;
			ViewBag.Page = page.Value;
			ViewBag.TotalPages = totalPages;

			return View(itemsUsed);
		}
	}
}

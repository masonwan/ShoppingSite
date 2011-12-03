using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text;
using ShoppingSite.Models;

namespace ShoppingSite.Controllers
{
	public static class HtmlHelperExtensions
	{
		public static string GetImageUrl(this UrlHelper helper, string filename)
		{
			var oldUrl = String.Format("~/Content/images/{0}", filename);
			var newUrl = helper.Content(oldUrl);
			return newUrl;
		}

		public static string GetItemImageUrl(this UrlHelper helper, Item item)
		{
			return helper.Content(String.Format("~/Content/Items/{0}.jpg", item.Pictures.First().Path));
		}

		public static MvcHtmlString Sidebar(this HtmlHelper htmlHelper, UrlHelper urlHelper, IEnumerable<Category> categories, int departmentId, int viewedCategoryId = -1)
		{
			var builder = new StringBuilder();

			builder.Append("<aside class=\"pro-left\">\n<aside class=\"gray-smll\">\n<h1>Shop By Category</h1><ul>");

			foreach (var category in categories)
			{
				builder.AppendFormat(
					"<li><a href=\"{0}\"{1}>{2}</a></li>",
					urlHelper.Action("Index", "Department", new { DepartmentId = departmentId, CategoryId = category.Id }),
					category.Id == viewedCategoryId ? " class=\"current\"" : "",
					category.Name
				);
			}

			builder.Append("</ul></aside>");

			builder.AppendFormat(
				"<img src=\"{0}\" class=\"left clear\" />",
				urlHelper.Content("~/Content/images/bg-gray-smll-bot.jpg")
			);
			builder.AppendFormat(
				"<img src=\"{0}\" class=\"left clear\" />",
				urlHelper.Content("~/Content/images/img-left-smll.jpg")
			);

			builder.Append("</aside>");

			return new MvcHtmlString(builder.ToString());
		}
	}
}
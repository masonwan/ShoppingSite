using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using ShoppingSite.Models;
using System.Security.Cryptography;
using System.Text;

namespace ShoppingSite.Controllers
{
	public class LoginController : BaseController
	{
		public ActionResult Index(string returnUrl)
		{
			ViewBag.ReturnUrl = returnUrl;

			return View();
		}

		public ActionResult Login(string returnUrl)
		{
			var form = Request.Form;

			var email = form["email"] as string;
			var password = form["password"] as string;
			var isRemembered = form["remember"] as string == "on";

			if (email == null || password == null)
			{
				return View();
			}

			// Validate the email and password.
			var data = Encoding.ASCII.GetBytes(form["password"]);
			using (var provider = new MD5CryptoServiceProvider())
			{
				data = provider.ComputeHash(data);
			}
			var md5Hash = Encoding.ASCII.GetString(data);

			var user = DB.Users.FirstOrDefault(u => u.Email == email && u.Password == md5Hash);

			if (user == null)
			{
				// UNDONE: Validation fails.
				TempData["ErrorMessage"] = "Wrong email or password.";

				return RedirectToAction("Index", new { ReturnUrl = returnUrl });
			}

			FormsAuthentication.SetAuthCookie(user.Email, isRemembered);
			Session["User.Id"] = user.Id;
			Session["User.Name"] = user.Name;

			if (Url.IsLocalUrl(returnUrl) &&
				returnUrl.Length > 1 && returnUrl.StartsWith("/") &&
				!returnUrl.StartsWith("//") &&
				!returnUrl.StartsWith("/\\"))
			{
				return Redirect(returnUrl);
			}

			return RedirectToAction("Index", "Home");
		}

		public ActionResult Logout()
		{
			FormsAuthentication.SignOut();

			return RedirectToAction("Index", "Home");
		}
	}
}

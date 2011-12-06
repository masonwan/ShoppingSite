using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;

namespace ShoppingSite.Controllers
{
	public class SignupController : BaseController
	{
		readonly Regex emailRegex = new Regex(@"^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$");
		readonly Regex zipRegex = new Regex(@"(\d{5}-\d{3})|(\d{5})");

		public ActionResult Index()
		{
			return View();
		}

		[HttpPost]
		public ActionResult CreateUser()
		{
			var form = Request.Form;
			var user = DB.Users.Create();

			user.Name = form["name"];
			user.Street = form["street"];
			user.City = form["city"];
			user.State = form["state"];
			user.ZipCode = form["zip"];
			user.Country = form["country"];

			user.Email = form["email"];
			user.Question = form["question"];
			user.Answer = form["answer"];

			try
			{
				user.Birth = String.IsNullOrEmpty(form["birth"]) ? null : (DateTime?)DateTime.Parse(form["birth"]);
			}
			catch { }

			// Validate
			if (form["password"] == form["repassword"])
			{
				TempData["ErrorMessage"] = "Your passwords are not identical.";
				return RedirectToAction("Index");
			}

			if (emailRegex.IsMatch(user.Email) == false)
			{
				TempData["ErrorMessage"] = "Your email is not in correct format.";
				return RedirectToAction("Index");
			}

			if (String.IsNullOrEmpty(user.Name))
			{
				TempData["ErrorMessage"] = "You must have a name.";
				return RedirectToAction("Index");
			}

			if (DB.Users.FirstOrDefault(u => u.Email == user.Email) != null)
			{
				TempData["ErrorMessage"] = "Someone has used the email address.";
				return RedirectToAction("Index");
			}

			var data = Encoding.ASCII.GetBytes(form["password"]);
			using (var provider = new MD5CryptoServiceProvider())
			{
				data = provider.ComputeHash(data);
			}
			var md5Hash = Encoding.ASCII.GetString(data);

			user.Password = md5Hash;
			DB.Users.Add(user);
			DB.SaveChanges();

			FormsAuthentication.SetAuthCookie(user.Email, true);
			Session["User.Id"] = user.Id;
			Session["User.Name"] = user.Name;

			return RedirectToAction("Index", "Home");
		}
	}
}

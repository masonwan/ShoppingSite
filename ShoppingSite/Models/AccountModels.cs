using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace ShoppingSite.Models
{

	public class ChangePasswordModel
	{
		[Required]
		[DataType(DataType.Password)]
		[Display(Name = "Current password")]
		public string OldPassword { get; set; }

		[Required]
		[StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
		[DataType(DataType.Password)]
		[Display(Name = "New password")]
		public string NewPassword { get; set; }

		[DataType(DataType.Password)]
		[Display(Name = "Confirm new password")]
		[Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
		public string ConfirmPassword { get; set; }
	}

	public class LogOnModel
	{
		[Required]
		[Display(Name = "User name")]
		public string UserName { get; set; }

		[Required]
		[DataType(DataType.Password)]
		[Display(Name = "Password")]
		public string Password { get; set; }

		[Display(Name = "Remember me?")]
		public bool RememberMe { get; set; }
	}

	public class RegisterModel
	{

		[Required]
		[Display(Name = "Name")]
		public string Name { get; set; }

		[Required]
		[Display(Name = "Street Address")]
		public string Street { get; set; }

		[Required]
		[Display(Name = "City")]
		public string City { get; set; }

		[Required]
		[Display(Name = "State")]
		public string State { get; set; }

		[Required]
		[Display(Name = "Zip Code")]
		public string ZipCode { get; set; }

		[Required]
		[Display(Name = "Country")]
		public string Country { get; set; }

		[Required]
		[DataType(DataType.EmailAddress)]
		[Display(Name = "Email address")]
		public string Email { get; set; }

		[Required]
		[StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
		[DataType(DataType.Password)]
		[Display(Name = "Password")]
		public string Password { get; set; }

		[DataType(DataType.Password)]
		[Display(Name = "Confirm password")]
		[Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
		public string ConfirmPassword { get; set; }

		[Display(Name = "Secret Question")]
		public string Question { get; set; }

		[Display(Name = "Answer")]
		public string Answer { get; set; }

		[Display(Name = "Birthday")]
		public string Birthday { get; set; }
	}
}

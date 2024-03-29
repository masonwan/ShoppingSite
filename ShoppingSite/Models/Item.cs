//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ShoppingSite.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Item
    {
        public Item()
        {
            this.Comments = new HashSet<Comment>();
            this.OrderItems = new HashSet<OrderItem>();
            this.Pictures = new HashSet<Picture>();
            this.Ratings = new HashSet<Rating>();
            this.Stores = new HashSet<Store>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public Nullable<decimal> Discount { get; set; }
        public int DepartmentId { get; set; }
        public int CategoryId { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual Department Department { get; set; }
        public virtual ICollection<OrderItem> OrderItems { get; set; }
        public virtual ICollection<Picture> Pictures { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
        public virtual ICollection<Store> Stores { get; set; }
    }
}

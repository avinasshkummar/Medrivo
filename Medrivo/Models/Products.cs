using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Medrivo.Models
{
    public class Products
    {
        public string ProductCategory { get; set; }
        public string ProductCategoryDescription { get; set; }
        public List<OurProduct> products { get; set; }

    }
}
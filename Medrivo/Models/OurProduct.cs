using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Medrivo.Models
{
    public class OurProduct
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string LogoImageURL { get; set; }
        public List<string> ImageURL { get; set; }
        public string ProductDescription { get; set; }
        public string ProductDetailDescription { get; set; }
    }
}
using Medrivo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Medrivo.Controllers
{
    public class ProductsController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            var products = new List<Products>();
            using (var db = new MedrivoBioScienceEntities())
            {
                var dbProducts = db.ProductCategories.GroupJoin((db.Products.Join(db.ProductImages, p => p.Id, purl => purl.ProductID,
                    (p, purl) => new { p.Id,ProductName=p.Name, purl.ProductImagePath,p.ProductTypeID ,ProductDescription=p.Description})), p => p.Id, pc => pc.ProductTypeID,
                    (p, pc) => new { ProductCategory=p.Name, ProductCategoryDescription=p.Description, pc });
                foreach (var item in dbProducts)
                {
                    var list = new List<OurProduct>();
                    foreach (var inneritem in item.pc)
                    {
                        list.Add(new OurProduct()
                        {
                            ProductName = inneritem.ProductName,
                            ImageURL = inneritem.ProductImagePath,
                            ProductDescription = inneritem.ProductDescription
                        });
                    }
                    products.Add(new Products()
                    {
                        ProductCategory = item.ProductCategory,
                        ProductCategoryDescription = item.ProductCategoryDescription,
                        products = list
                    });
                }
            }
            ViewBag.Products = products;
            return View();
        }
        public ActionResult Nutrition()
        {
            return View();
        }
        public ActionResult Supplement()
        {
            return View();
        }
        
        public ActionResult AntiToxin()
        {
            var url = RouteData.Values;
            
            return View();
        }
    }
}
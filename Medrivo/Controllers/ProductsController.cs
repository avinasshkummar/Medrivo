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
            using (var db = new MedrivoBioScienceEntitiesDB())
            {


                var dbProducts = db.ProductCategories.GroupJoin((db.Products.Join(db.ProductImages.Where(x=>x.IsLogo), p => p.Id, purl => purl.ProductID,
                    (p, purl) => new { p.Id, ProductName = p.Name, purl.ProductImagePath, p.ProductTypeID, ProductDescription = p.Description })), p => p.Id, pc => pc.ProductTypeID,
                    (p, pc) => new { ProductCategory = p.Name, ProductCategoryDescription = p.Description, pc });
                foreach (var item in dbProducts)
                {
                    var list = new List<OurProduct>();
                    foreach (var inneritem in item.pc)
                    {
                        list.Add(new OurProduct()
                        {
                            ProductID = inneritem.Id,
                            ProductName = inneritem.ProductName,
                            LogoImageURL = inneritem.ProductImagePath,
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
        public ActionResult ProductDetails()
        {
            var productDeatil = new OurProduct();
            var productID= Int32.Parse(Request.Url.Segments[3]);
            using (var db = new MedrivoBioScienceEntitiesDB())
            {
                var prodswithdesc = db.Products.Join(db.ProductDescriptions, p => p.Id, pd => pd.ProductID, (p, pd) => new { p.Id,p.Name, p.ProductTypeID,p.ProductCategory ,detailed =pd.Description });

                var toreturn = prodswithdesc.GroupJoin(db.ProductImages, p => p.Id, purl => purl.ProductID,
                    (x, y) => new { x.Id, ProductName = x.Name, prodtypeid=x.ProductTypeID, category=x.ProductCategory, detailed=x.detailed, images=y.ToList() }).Where(p=>p.Id== productID).FirstOrDefault();
                productDeatil = new OurProduct() {ProductID= toreturn.Id, 
                    ImageURL = toreturn.images.Select(x=>x.ProductImagePath).ToList(), 
                    ProductDescription = db.ProductCategories.Where(x=>x.Id==toreturn.prodtypeid).Select(x=>x.Name).FirstOrDefault(), 
                    ProductName = toreturn.ProductName,
                    ProductDetailDescription= toreturn.detailed};
            }
            ViewBag.ProductDetail = productDeatil;

            return View();
        }
    }
}
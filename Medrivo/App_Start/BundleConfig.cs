using System.Web;
using System.Web.Optimization;

namespace Medrivo
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new Bundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new Bundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new StyleBundle("~/Content/bundle/boxiconswoff2").Include(
                "~/Content/fonts/boxicons/boxicons.woff2"
                ));

            bundles.Add(new StyleBundle("~/Content/bundle/boxiconswoff").Include(
                "~/Content/fonts/boxicons/boxicons.woff"
                ));

            bundles.Add(new StyleBundle("~/Content/bundle/boxiconsttf").Include(
                "~/Content/fonts/boxicons/boxicons.ttf"
                ));
            bundles.Add(new StyleBundle("~/Content/bundle/boxiconssvg").Include(
                "~/Content/fonts/boxicons/boxicons.svg?#boxicons"
                ));



            bundles.Add(new Bundle("~/bundles/Vendorjs").Include(
                "~/Scripts/aos/aos.js",
                "~/Scripts/glightbox/glightbox.js",
                "~/Scripts/isotope/isotope.pkgd.min.js",
                "~/Scripts/swiper/swiper-bundle.min.js",
                "~/Scripts/validate.js"
                ));
            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new Bundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new Bundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/main.js"));

            bundles.Add(new StyleBundle("~/bundles/Content/css").Include(
                      "~/Content/bootstrap.css",
                      
                      "~/Content/style.css"));

            bundles.Add(new StyleBundle("~/bundles/Vendorcss").Include(
                "~/Content/aos/aos.css",
                "~/Content/glightbox/glightbox.min.css",
                "~/Content/fonts/bootstrap-icons-fonts/bootstrap-icons.css",
                "~/Content/boxicons-css/boxicons.css",
                "~/Content/swiper/swiper-bundle.min.css"
                ));

        }
    }
}

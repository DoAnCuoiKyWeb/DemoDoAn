using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MobileShop.Models.BUS;



namespace MobileShop.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        public ActionResult Index()
        {
            var dsSanPham = SanPhamBUS.DanhSach();
            return View(dsSanPham);
        }
    }
}
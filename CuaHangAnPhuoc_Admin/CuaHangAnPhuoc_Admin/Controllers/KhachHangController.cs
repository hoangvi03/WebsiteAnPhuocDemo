using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CuaHangAnPhuoc_Admin.Models;

namespace CuaHangAnPhuoc_Admin.Controllers
{
    public class KhachHangController : Controller
    {
        // GET: KhachHang
        public ActionResult DSKhachHang()
        {
            ConnectionKhachHang connect = new ConnectionKhachHang();
            List<KhachHang> lst = connect.GetData();
            return View(lst);
        }
    }
}
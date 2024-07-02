using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using CuaHangAnPhuoc_Admin.Models;

namespace CuaHangAnPhuoc_Admin.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        public ActionResult DanhSachSP()
        {
            ConnectionSanPham connection = new ConnectionSanPham();
            List<SanPham> lst = connection.GetDATA();
            return View(lst);
        }
        public ActionResult TaoSPMoi()
        {
            return View(new SanPham());
        }
        [HttpPost]
        public ActionResult TaoSPMoi(SanPham model)
        {
            ConnectionSanPham connection = new ConnectionSanPham();
            connection.ThemSP(model);
            return RedirectToAction("DanhSachSP");
        }

        public ActionResult DeleteSP()
        {
            return View(new SanPham());
        }
        [HttpPost]
        public ActionResult DeleteSP(string maSP)
        {
            ConnectionSanPham connection = new ConnectionSanPham();
            connection.XoaSP(maSP);
            return RedirectToAction("DanhSachSP");
        }

        public ActionResult EditSP(string id)
        {
            ConnectionSanPham connect = new ConnectionSanPham();
            SanPham sanPham = connect.GetIDSP(id);
            return View(sanPham);
        }
        [HttpPost]
        public ActionResult EditSP(SanPham sanPham)
        {
            ConnectionSanPham connection = new ConnectionSanPham();
            connection.SuaSP(sanPham);
            return RedirectToAction("DanhSachSP");
        }
    }
}
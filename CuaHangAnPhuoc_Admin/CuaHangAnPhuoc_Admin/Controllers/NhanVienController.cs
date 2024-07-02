using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Reflection;
using CuaHangAnPhuoc_Admin.Models;

namespace CuaHangAnPhuoc_Admin.Controllers
{
    public class NhanVienController : Controller
    {
        // GET: NhanVien
        public ActionResult DSNhanVien()
        {
            ConnectionNhanVien connect = new ConnectionNhanVien();
            List<NhanVien> lst = connect.GetDATA();
            return View(lst);
        }
        public ActionResult TaoMoiNV()
        {
            return View(new NhanVien());
        }
        [HttpPost]
        public ActionResult TaoMoiNV(NhanVien nv)
        {
            ConnectionNhanVien connect = new ConnectionNhanVien();
            connect.ThemNV(nv);
            return RedirectToAction("DSNhanVien");
        }

        public ActionResult DeleteNV()
        {
            return View(new NhanVien());
        }
        [HttpPost]
        public ActionResult DeleteNV(string maNV)
        {
            ConnectionNhanVien connect = new ConnectionNhanVien();
            connect.XoaNV(maNV);
            return RedirectToAction("DSNhanVien");
        }

        public ActionResult EditNV(string id)
        {
            ConnectionNhanVien connect = new ConnectionNhanVien();
            NhanVien nv = connect.GetIDNV(id);
            return View(nv);
        }
        [HttpPost]
        public ActionResult EditNV(NhanVien nv)
        {
            ConnectionNhanVien connection = new ConnectionNhanVien();
            connection.SuaNV(nv);
            return RedirectToAction("DSNhanVien");
        }
    }
}
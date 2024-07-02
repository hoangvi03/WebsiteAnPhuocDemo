using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class DanhMuc
    {
        public string MaDM { get; set; }
        public string TenDanhMuc { get; set; }
        public DanhMuc()
        {
            MaDM = "";
            TenDanhMuc = "";
        }
    }
}
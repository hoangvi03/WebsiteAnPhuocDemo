using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class SanPham
    {
        public string MaSP { get; set; }
        public string TenSP { get; set; }

        public decimal GiaVon { get; set; }
        public decimal GiaBan { get; set; }
        public string Size { get; set; }
        public string Anh { get; set; }
        public int SoLuong { get; set; }
        public string MoTa { get; set; }
        public string TinhTrang { get; set; }
        public string MaDM { get; set; }
        public SanPham()
        {
            MaSP = "";
            TenSP = "";
            GiaVon = GiaBan = 0;
            Size = "S";
            Anh = "";
            SoLuong = 0;
            MoTa = "";
            TinhTrang = "Hết Hàng";
            MaDM = "";
        }
    }
}
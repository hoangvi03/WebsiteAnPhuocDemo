﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class KhachHang
    {
        public int MaKH { get; set; }
        public string TenKH { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }
        public string TK { get; set; }
        public string MK { get; set; }
        public string Email { get; set; }
        public KhachHang()
        {
            MaKH = 0;
            TenKH = DiaChi = SDT = TK = MK = Email = string.Empty;

        }
    }
}
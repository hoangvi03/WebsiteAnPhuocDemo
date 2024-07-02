using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class NhanVien
    {
        public string MANV { get; set; }
        public string TENNV { get; set; }
        public string EMAIL { get; set; }
        public DateTime NGAYSINH { get; set; }
        public string GIOITINH { get; set; }
        public string DCHI { get; set; }
        public string SDT { get; set; }
        public string NOISINH { get; set; }
        public string CHUCVU { get; set; }
        public string ANHNV { get; set; }
        public NhanVien()
        {
            MANV = string.Empty;
            TENNV = string.Empty;
            EMAIL = string.Empty;
            NGAYSINH = DateTime.Now;
            GIOITINH = string.Empty;
            DCHI = string.Empty;
            SDT = string.Empty;
            NOISINH = string.Empty;
            CHUCVU = string.Empty;
            ANHNV = string.Empty;
        }
    }
}
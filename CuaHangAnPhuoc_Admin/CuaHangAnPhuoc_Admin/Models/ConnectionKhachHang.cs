using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CuaHangAnPhuoc_Admin.Models;
using System.Data;
using System.Data.SqlClient;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class ConnectionKhachHang
    {
        private string connectionString = "Data Source = DESKTOP-MSK51AN\\HOANGVI; Initial Catalog = QL_QUANAO; Integrated Security = true";
        SqlConnection con;
        public List<KhachHang> GetData()
        {
            List<KhachHang> lst = new List<KhachHang>();
            con = new SqlConnection(connectionString);
            con.Open();
            string sql = "Select * from KHACHHANG";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                KhachHang KhachHang = new KhachHang();
                KhachHang.MaKH = int.Parse(reader.GetValue(0).ToString());
                KhachHang.TenKH = reader.GetValue(1).ToString();
                KhachHang.DiaChi = reader.GetValue(2).ToString();
                KhachHang.SDT = reader.GetValue(3).ToString();
                KhachHang.TK = reader.GetValue(4).ToString();
                KhachHang.MK = reader.GetValue(5).ToString();
                KhachHang.Email = reader.GetValue(6).ToString();
                lst.Add(KhachHang);
            }
            return lst;
        }
    }
}
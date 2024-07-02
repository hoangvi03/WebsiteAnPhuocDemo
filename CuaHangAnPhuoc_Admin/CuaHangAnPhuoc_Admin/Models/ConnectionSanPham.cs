using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class ConnectionSanPham
    {
        private string connectionString = "Data Source = DESKTOP-MSK51AN\\HOANGVI; Initial Catalog = QL_QUANAO; Integrated Security = true";
        public List<SanPham> GetDATA()
        {
            List<SanPham> lst = new List<SanPham>();
            SqlConnection con = new SqlConnection(connectionString);
            string sql = "SELECT MASP,TENSP, GIA,VON,SIZE,ANH,SOLUONG,TINHTRANG FROM SANPHAM";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                SanPham sp = new SanPham();
                sp.MaSP = reader.GetValue(0).ToString();
                sp.TenSP = reader.GetValue(1).ToString();
                sp.GiaBan = decimal.Parse(reader.GetValue(2).ToString());
                sp.GiaVon = decimal.Parse(reader.GetValue(3).ToString());
                sp.Size = reader.GetValue(4).ToString();
                sp.Anh = reader.GetValue(5).ToString();
                sp.SoLuong = int.Parse(reader.GetValue(6).ToString());
                sp.TinhTrang = reader.GetValue(7).ToString();
                lst.Add(sp);
            }
            return lst;
        }
        public void ThemSP(SanPham model)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "INSERT INTO SANPHAM (MASP,TENSP, GIA,VON,SIZE,ANH,SOLUONG,TINHTRANG, MOTA, MaDM) VALUES('" + model.MaSP + "', N'" + model.TenSP + "', " + model.GiaBan + ", " + model.GiaVon + ", '" + model.Size + "', '" + model.Anh + "', " + model.SoLuong + ", '" + model.TinhTrang + "', N'" + model.MoTa + "', '" + model.MaDM + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            int n = cmd.ExecuteNonQuery();
            
        }
        public SanPham GetIDSP(string maSP)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SanPham sp = new SanPham();
            string sql = "SELECT * FROM SANPHAM WHERE MASP = '" + maSP + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                sp.MaSP = reader.GetValue(0).ToString();
                sp.TenSP = reader.GetValue(1).ToString();
                sp.GiaBan = decimal.Parse(reader.GetValue(2).ToString());
                sp.GiaVon = decimal.Parse(reader.GetValue(3).ToString());
                sp.Size = reader.GetValue(4).ToString();
                sp.Anh = reader.GetValue(5).ToString();
                sp.SoLuong = int.Parse(reader.GetValue(6).ToString());
                sp.TinhTrang = reader.GetValue(7).ToString();
                sp.MaDM = reader.GetValue(8).ToString();
                sp.MoTa = reader.GetValue(9).ToString();
            }
            return sp;
        }
        public void XoaSP(string maSP)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "DELETE FROM SANPHAM WHERE MASP = '" + maSP + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        public void SuaSP(SanPham sanPham)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            //string sql = "UPDATE SANPHAM SET TENSP = N'" + sanPham.TenSP + "', GIA = " + sanPham.GiaBan + ", VON = " + sanPham.GiaVon + ", SIZE = '" + sanPham.Size + "', ANH = '" + sanPham.Anh + "', SOLUONG = " + sanPham.SoLuong + ", TINHTRANG = '" + sanPham.TinhTrang + "' WHERE MASP = " + sanPham.MaSP + "";
            string sql = "UPDATE SANPHAM " +
                "SET TENSP = N'" + sanPham.TenSP + "', " +
                "GIA = " + sanPham.GiaVon + ", " +
                "VON = " + sanPham.GiaVon + ", " +
                "SIZE = '" + sanPham.Size + "', " +
                "ANH = '" + sanPham.Anh + "', " +
                "SOLUONG = " + sanPham.SoLuong + ", " +
                "TINHTRANG = N'" + sanPham.TinhTrang + "', " +
                "MOTA = N'" + sanPham.MoTa + "', " +
                "MaDM = '" + sanPham.MaDM + "' " +
                "WHERE MASP = '" + sanPham.MaSP + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
        }
    }
}
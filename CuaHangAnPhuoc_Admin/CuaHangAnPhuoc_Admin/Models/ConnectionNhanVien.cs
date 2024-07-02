using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace CuaHangAnPhuoc_Admin.Models
{
    public class ConnectionNhanVien
    {
        private string connectionString = "Data Source = DESKTOP-MSK51AN\\HOANGVI; Initial Catalog = QL_QUANAO; Integrated Security = true";
        SqlConnection con;
        public List<NhanVien> GetDATA()
        {
            List<NhanVien> lst = new List<NhanVien>();
            con = new SqlConnection(connectionString);
            con.Open();
            string sql = "SELECT * FROM NHANVIEN";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                NhanVien nv = new NhanVien();
                nv.MANV = reader.GetValue(0).ToString();
                nv.TENNV = reader.GetValue(1).ToString();
                nv.EMAIL = reader.GetValue(2).ToString();
                nv.NGAYSINH = DateTime.Parse(reader.GetValue(3).ToString());
                nv.GIOITINH = reader.GetValue(4).ToString();
                nv.DCHI = reader.GetValue(5).ToString();
                nv.SDT = reader.GetValue(6).ToString();
                nv.NOISINH = reader.GetValue(7).ToString();
                nv.CHUCVU = reader.GetValue(8).ToString();
                nv.ANHNV = reader.GetValue(9).ToString();
                lst.Add(nv);
            }
            return lst;
        }
        public void ThemNV(NhanVien nv)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "INSERT INTO NHANVIEN VALUES('" + nv.MANV + "', N'" + nv.TENNV + "', '" + nv.EMAIL + "', '" + nv.NGAYSINH.ToString("yyyy-MM-dd") + "', N'" + nv.GIOITINH + "', N'" + nv.DCHI + "', '" + nv.SDT + "', N'" + nv.NOISINH + "', N'" + nv.CHUCVU + "', '" + nv.ANHNV + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            int n = cmd.ExecuteNonQuery();
        }

        public void XoaNV(string maNV)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "DELETE FROM NHANVIEN WHERE MANV = '" + maNV + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }

        public NhanVien GetIDNV(string maNV)
        {
            SqlConnection con = new SqlConnection(connectionString);
            NhanVien nv = new NhanVien();
            string sql = "SELECT * FROM NHANVIEN WHERE MANV = '" + maNV + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                nv.MANV = reader.GetValue(0).ToString();
                nv.TENNV = reader.GetValue(1).ToString();
                nv.EMAIL = reader.GetValue(2).ToString();
                nv.NGAYSINH = DateTime.Parse(reader.GetValue(3).ToString());
                nv.GIOITINH = reader.GetValue(4).ToString();
                nv.DCHI = reader.GetValue(5).ToString();
                nv.SDT = reader.GetValue(6).ToString();
                nv.NOISINH = reader.GetValue(7).ToString();
                nv.CHUCVU = reader.GetValue(8).ToString();
                nv.ANHNV = reader.GetValue(9).ToString();
            }
            return nv;
        }

        public void SuaNV(NhanVien nv)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string sql = "UPDATE NHANVIEN " +
                "SET TENNV = N'" + nv.TENNV + "', " +
                "EMAIL = '" + nv.EMAIL + "', " +
                "NGAYSINH = '" + nv.NGAYSINH.ToString("yyyy-MM-dd") + "', " +
                "GIOITINH = N'" + nv.GIOITINH + "', " +
                "DCHI = N'" + nv.DCHI + "', " +
                "SDT = '" + nv.SDT + "', " +
                "NOISINH = N'" + nv.NOISINH + "', " +
                "CHUCVU = N'" + nv.CHUCVU + "', " +
                "ANHNV = '" + nv.ANHNV + "' " +
                "WHERE MANV = '" + nv.MANV + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
        }
    }
}
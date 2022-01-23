using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ChiTietPhieuNhap
    {
        [Display(Name = "Số Phiếu Nhập")]
        public int so_phieu_nhap { get; set; }
        [Display(Name = "Mã Nguyên Liệu Kho")]
        public short ma_nl_kho { get; set; }
        [Display(Name = "Số Lượng")]
        public double so_luong { get; set; }
        [Display(Name = "Đơn Giá")]
        public double don_gia_nl { get; set; }
        [Display(Name = "Mã Nhà Cung Cấp")]
        public int ma_ncc { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Mã Nguyên Liệu")]
        public short ma_nl { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Nguyên Liệu")]
        public string ten_nl { get; set; } = null!;

    }
}

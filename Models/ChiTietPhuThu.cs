using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ChiTietPhuThu
    {
        [Display(Name = "Số Phiếu Thu")]
        public int so_phieu_thu { get; set; }
        [Display(Name = "Mã Dịch Vụ")]
        public int ma_dich_vu { get; set; }
        [Display(Name = "Số Lượng")]
        public double so_luong { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Dịch Vụ")]
        public string? ten_dich_vu { get; set; }
        [Display(Name = "Đơn Giá")]
        public double? don_gia_dv_hien_thoi { get; set; } = null!;
    }
}

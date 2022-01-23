using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ChiTietHoaDon
    {
        [Display(Name = "Số Hóa Đơn")]
        public int so_hd { get; set; }
        [Display(Name = "Mã Sản Phẩm")]
        public int ma_sp { get; set; }
        [Display(Name = "Tên Sản Phẩm")]
        public string ten_sp { get; set; } = null!;
        [Display(Name = "Hình ảnh")]
        public string hinh_anh { get; set; } = null!;

        [Display(Name = "Số Lượng")]
        public int so_luong { get; set; }
        [Display(Name = "Giá")]
        public double don_gia_sp_hien_thoi { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Mã Khu Vực")]
        public string ma_khu_vuc { get; set; } = null!;
    }
}

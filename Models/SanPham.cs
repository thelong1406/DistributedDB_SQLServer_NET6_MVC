using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class SanPham
    {
        [Display(Name = "Mã Sản Phẩm")]
        public int ma_sp { get; set; }
        [Display(Name = "Tên Sản Phẩm")]
        public string ten_sp { get; set; } = null!;
        [Display(Name = "Đơn Giá Sản Phẩm")]
        public double don_gia_theo_sp { get; set; }
        [Display(Name = "Ghi Chú Công Thức")]
        public string? ghi_chu_cong_thuc { get; set; }
        [Display(Name = "Mã Loại")]
        public int ma_loai { get; set; }
        [Display(Name = "Hình Ảnh")]
        public string? hinh_anh { get; set; }
        [Display(Name = "Đơn Giá Khuyến Mãi")]
        public double? don_gia_khuyen_mai { get; set; }
    }
}

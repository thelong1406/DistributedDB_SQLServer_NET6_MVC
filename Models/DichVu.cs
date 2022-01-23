using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class DichVu
    {
        [Display(Name = "Mã Dịch Vụ")]
        public int ma_dich_vu { get; set; }
        [Display(Name = "Tên Dịch Vụ")]
        public string ten_dich_vu { get; set; } = null!;
        [Display(Name = "Đơn Giá Theo Giờ")]
        public double don_gia_theo_gio { get; set; }
        [Display(Name = "Đơn Giá Khuyến Mãi")]
        public double? don_gia_khuyen_mai { get; set; }

    }
}

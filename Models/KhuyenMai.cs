using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class KhuyenMai
    {
        [Display(Name = "Mã Khuyến Mãi")]
        public int ma_khuyen_mai { get; set; }
        [Display(Name = "Điều Kiện Tích Lũy")]
        public double dieu_kien_tich_luy { get; set; }
        [Display(Name = "Mức Khuyến Mãi")]
        public double muc_khuyen_mai { get; set; }

    }
}

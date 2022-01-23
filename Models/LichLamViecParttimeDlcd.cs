using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class LichLamViecParttimeDlcd
    {

        [Display(Name = "ID")]
        public int id { get; set; }
        [Display(Name = "Ngày Trong Tuần")]
        public string ngay_trong_tuan { get; set; } = null!;
        [Display(Name = "Ca Trong Ngày")]
        public string ca_trong_ngay { get; set; } = null!;
        [Display(Name = "Thưởng Theo Ca")]
        public double thuong_theo_ca { get; set; }
        [Display(Name = "Ghi Chú")]
        public string? ghi_chu { get; set; }
        [Display(Name = "Giờ Nhận Ca")]
        public DateTime gio_nhan_ca { get; set; }
        [Display(Name = "Giờ Tan Ca")]
        public DateTime gio_tan_ca { get; set; }

    }
}

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class BackupDoanhThu
    {
        [Display(Name = "Ngày")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime ngay { get; set; }
        [Display(Name = "Bán Hàng")]
        public double ban_hang { get; set; }
        [Display(Name = "Chi")]
        public double chi { get; set; }
        [Display(Name = "Nhập Nguyên Liệu")]
        public double nhap_nl { get; set; }
        [Display(Name = "Phụ Thu")]
        public double phu_thu { get; set; }
        [Display(Name = "Lợi Nhuận")]
        public double loi_nhuan { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
    }
}

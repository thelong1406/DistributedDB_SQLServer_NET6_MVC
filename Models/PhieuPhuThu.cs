using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class PhieuPhuThu
    {
        [Display(Name = "Số Phiếu Thu")]
        public int so_phieu_thu { get; set; }
        [Display(Name = "Ngày Thu")]
        public DateTime ngay_thu { get; set; }
        [Display(Name = "Tổng Phụ Thu")]
        public double? tong_phu_thu { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;

    }
}

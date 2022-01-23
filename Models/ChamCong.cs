using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ChamCong
    {
        [Display(Name = "Mã Chấm Công")]
        public int ma_cham_cong { get; set; }
        [Display(Name = "Ngày Check Công")]
        public DateTime? ngay_check_cong { get; set; }
        [Display(Name = "Đi Trễ")]
        public bool? di_tre { get; set; }
        [Display(Name = "Về Sớm")]
        public bool? ve_som { get; set; }
        [Display(Name = "Vắng Mặt")]
        public bool? vang_mat { get; set; }
        [Display(Name = "Nhận Ca")]
        public DateTime? tg_nhan_ca_thuc_te { get; set; }
        [Display(Name = "Tan Ca")]
        public DateTime? tg_tan_ca_thuc_te { get; set; }
        [Display(Name = "Tổng Giờ")]
        public DateTime? tong_thoi_gian_lam { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
    }
}

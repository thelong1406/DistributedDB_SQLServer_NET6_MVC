using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class Logined_User_Info
    {
        [Display(Name = "Mã Nhân Viên")]
        public string? ma_nv { get; set; }

        [Display(Name = "Tên Nhân Viên")]
        public string? ten_nv { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string? ma_chi_nhanh { get; set; }
        [Display(Name = "Vai Trò")]
        public string? vai_tro { get; set; }

        public string? anh_dai_dien { get; set; }
        [Display(Name = "Phái")]
        public string? gioi_tinh { get; set; }
        [Display(Name = "Ngày Sinh")]
        public string? ngay_sinh { get; set; }
        [Display(Name = "Tình Trạng")]
        public string? thu_viec { get; set; }
        [Display(Name = "Loại Nhân Viên")]
        public string? loai_nv { get; set; }
        [Display(Name = "Thời Gian Đã Làm Việc")]
        public string? thoi_gian_lam_viec { get; set; }
        [Display(Name = "Hệ Số Lương")]

        public string? he_so_luong { get; set; }
        [Display(Name = "SĐT")]
        public string? sdt { get; set; }
        [Display(Name = "Số CMND")]
        public string? cmnd { get; set; }
        [Display(Name = "Địa Chỉ")]
        public string? dia_chi { get; set; }
    }
}

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class NhanVien
    {
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Tên Nhân Viên")]
        public string ten_nv { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Chi Nhánh")]
        public string ten_chi_nhanh { get; set; } = null!;
        [Display(Name = "CMND")]
        public string cmnd { get; set; } = null!;
        [Display(Name = "Loại Nhân Viên")]
        public string loai_nv { get; set; } = null!;
        [Display(Name = "Vai Trò")]
        public string vai_tro { get; set; } = null!;
        [Display(Name = "Địa Chỉ")]
        public string? dia_chi_nv { get; set; }
        [Display(Name = "Địa Chỉ")]
        public string? dia_chi { get; set; }
        [Display(Name = "SĐT")]
        public string sdt { get; set; } = null!;
        [Display(Name = "SĐT")]
        public string sdt_nv { get; set; } = null!;
        [Display(Name = "Thử Việc")]
        public string thu_viec { get; set; } = null!;
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [Display(Name = "Ngày Nhận Việc")]
        public DateTime? ngay_nhap_viec { get; set; }
        [Display(Name = "Thời Gian Làm Việc")]
        public string? thoi_gian_lam_viec { get; set; }
        [Display(Name = "Hệ Số Lương")]
        public double? he_so_luong { get; set; }
        [Display(Name = "Mã Chức Vụ")]
        public string ma_chuc_vu { get; set; } = null!;
        [Display(Name = "Ảnh Đại Diện")]
        public string? anh_dai_dien { get; set; }
        [Display(Name = "Ngày Sinh")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime ngay_sinh { get; set; }
        [Display(Name = "Giới Tính")]
        public string gioi_tinh { get; set; } = null!;

    }
}

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class PhanCong
    {
        [Display(Name = "Mã Nhân Viên")]
        public string? ma_nv { get; set; }
        [Display(Name = "Mã Lịch Làm Việc")]
        public int id { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string? ma_chi_nhanh { get; set; }

    }
}

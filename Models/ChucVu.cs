using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ChucVu
    {
        [Display(Name = "Mã Chức Vụ")]
        public string ma_chuc_vu { get; set; } = null!;
        [Display(Name = "Tên Chức Vụ")]
        public string ten_chuc_vu { get; set; } = null!;
        [Display(Name = "Cách Tính Lương")]
        public bool cach_tinh_luong { get; set; }
        [Display(Name = "Lương")]
        public double luong { get; set; }
    }
}

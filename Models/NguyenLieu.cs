using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class NguyenLieu
    {
        [Display(Name = "Mã Nguyên Liệu")]
        public short ma_nl { get; set; }
        [Display(Name = "Tên Nguyên Liệu")]
        public string ten_nl { get; set; } = null!;
        [Display(Name = "Đơn Vị Đo")]
        public string don_vi_do { get; set; } = null!;
    }
}

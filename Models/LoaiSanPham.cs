using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class LoaiSanPham
    {
        [Display(Name = "Mã Loại")]
        public int ma_loai { get; set; }
        [Display(Name = "Tên Loại")]
        public string ten_loai { get; set; } = null!;
    }
}

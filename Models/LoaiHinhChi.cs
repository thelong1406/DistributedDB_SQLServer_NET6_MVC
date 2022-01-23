using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class LoaiHinhChi
    {
        [Display(Name = "Mã Loại Chi")]
        public byte ma_loai_chi { get; set; }
        [Display(Name = "Tên Loại Chi")]
        public string ten_loai_chi { get; set; } = null!;

    }
}

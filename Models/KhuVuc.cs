using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class KhuVuc
    {
        [Display(Name = "Mã Khu Vực")]
        public string ma_khu_vuc { get; set; } = null!;
        [Display(Name = "Tên Khu Vực")]
        public string ten_khu_vuc { get; set; } = null!;
        [Display(Name = "Phí Khu Vực")]
        public double phi_kv { get; set; }

    }
}

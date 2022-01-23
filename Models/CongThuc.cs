using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class CongThuc
    {
        [Display(Name = "Mã Sản Phẩm")]
        public int ma_sp { get; set; }
        [Display(Name = "Mã Nguyên Liệu")]
        public short ma_nl { get; set; }
        [Display(Name = "Lượng")]
        public double luong { get; set; }
    }
}

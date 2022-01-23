using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class NguyenLieuKho
    {
        [Display(Name = "Mã Nguyên Liệu Kho")]
        public short ma_nl_kho { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tồn Kho")]
        public double ton_kho { get; set; }
        [Display(Name = "Giá Vốn")]
        public double gia_von { get; set; }
        [Display(Name = "Mã Nguyên Liệu")]
        public short ma_nl { get; set; }
        [Display(Name = "Tên Nguyên Liệu")]
        public string ten_nl { get; set; } = null!;
        [Display(Name = "Đơn Vị Đo")]
        public string don_vi_do { get; set; } = null!;

    }
}

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ChiNhanh
    {
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Chi Nhánh")]
        public string ten_chi_nhanh { get; set; } = null!;
        [Display(Name = "Địa Chỉ")]
        public string dia_chi { get; set; } = null!;
        [Display(Name = "SĐT Chi Nhánh")]
        public string sdt_cn { get; set; } = null!;
    }
}

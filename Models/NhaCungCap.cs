using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class NhaCungCap
    {
        [Display(Name = "Mã NCC")]
        public byte ma_ncc { get; set; }
        [Display(Name = "Nhà Cung Cấp")]
        public string ten_ncc { get; set; } = null!;
        [Display(Name = "SĐT")]
        public string sdt_ncc { get; set; } = null!;
        [Display(Name = "Địa Chỉ")]
        public string dia_chi_ncc { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        
    }
}

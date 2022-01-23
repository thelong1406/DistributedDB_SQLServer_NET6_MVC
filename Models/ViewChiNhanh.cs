using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class ViewChiNhanh
    {
        [Display(Name = "Tên Chi Nhánh")]
        public string? ten_chi_nhanh { get; set; }
        [Display(Name = "Tên Server")]
        public string? ten_server { get; set; }

    }
}

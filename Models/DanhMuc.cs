using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class DanhMuc
    {
        [Display(Name = "Url")]
        public string url { get; set; } = null!;
        [Display(Name = "Title")]
        public string url_title { get; set; } = null!;
    }
}
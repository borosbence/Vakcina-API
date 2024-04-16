using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Vakcina.API.Models
{
    [Index("felhasznalo_nev", Name = "felhasznalo_nev", IsUnique = true)]
    [Table("orvos")]
    public partial class orvos
    {
        public orvos()
        {
            oltas = new HashSet<oltas>();
        }

        [Key]
        [Column(TypeName = "int(11)")]
        public int id { get; set; }
        [StringLength(50)]
        public string felhasznalo_nev { get; set; } = null!;
        [StringLength(128)]
        public string jelszo { get; set; } = null!;
        [StringLength(100)]
        public string megjelenitendo_nev { get; set; } = null!;
        public bool admin { get; set; }

        [InverseProperty("orvos")]
        public virtual ICollection<oltas> oltas { get; set; }
    }
}

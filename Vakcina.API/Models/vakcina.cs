using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Vakcina.API.Models
{
    [Index("megnevezes", Name = "megnevezes", IsUnique = true)]
    [Table("vakcina")]
    public partial class vakcina
    {
        public vakcina()
        {
            oltas = new HashSet<oltas>();
        }

        [Key]
        [Column(TypeName = "int(11)")]
        public int id { get; set; }
        [StringLength(50)]
        public string megnevezes { get; set; } = null!;
        [StringLength(100)]
        public string szarmazasi_hely { get; set; } = null!;
        [Column(TypeName = "int(11)")]
        public int mennyiseg { get; set; }

        [InverseProperty("vakcina")]
        public virtual ICollection<oltas> oltas { get; set; }
    }
}

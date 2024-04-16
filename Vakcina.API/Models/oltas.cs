using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Vakcina.API.Models
{
    [Index("orvos_id", Name = "orvos_id")]
    [Index("vakcina_id", Name = "vakcina_id")]
    [Table("oltas")]
    public partial class oltas
    {
        [Key]
        [Column(TypeName = "int(9) unsigned zerofill")]
        public uint taj_szam { get; set; }
        [Column(TypeName = "int(11)")]
        public int vakcina_id { get; set; }
        [Column(TypeName = "int(11)")]
        public int orvos_id { get; set; }
        public DateTime datum_utolso { get; set; }
        [Column(TypeName = "int(1)")]
        public int oltas_szam { get; set; }

        [ForeignKey("orvos_id")]
        [InverseProperty("oltas")]
        [JsonIgnore]
        public virtual orvos? orvos { get; set; }
        [ForeignKey("vakcina_id")]
        [InverseProperty("oltas")]
        [JsonIgnore]
        public virtual vakcina? vakcina { get; set; }
    }
}

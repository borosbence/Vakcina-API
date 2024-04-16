using Microsoft.EntityFrameworkCore;

namespace Vakcina.API.Models
{
    public partial class VakcinaContext : DbContext
    {
        public VakcinaContext()
        {
        }

        public VakcinaContext(DbContextOptions<VakcinaContext> options)
            : base(options)
        {
        }

        public virtual DbSet<oltas> Oltasok { get; set; } = null!;
        public virtual DbSet<orvos> Orvosok { get; set; } = null!;
        public virtual DbSet<vakcina> Vakcinak { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                // TODO: 01. A ConnectionStringet át kell helyezni az appsettings.json fájlba
                optionsBuilder.UseMySql("server=localhost;user id=root;database=vp_vakcina", Microsoft.EntityFrameworkCore.ServerVersion.Parse("10.4.24-mariadb"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("utf8mb4_general_ci")
                .HasCharSet("utf8mb4");

            modelBuilder.Entity<oltas>(entity =>
            {
                entity.HasKey(e => e.taj_szam)
                    .HasName("PRIMARY");

                entity.Property(e => e.taj_szam).ValueGeneratedNever();

                entity.HasOne(d => d.orvos)
                    .WithMany(p => p.oltas)
                    .HasForeignKey(d => d.orvos_id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("oltas_ibfk_2");

                entity.HasOne(d => d.vakcina)
                    .WithMany(p => p.oltas)
                    .HasForeignKey(d => d.vakcina_id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("oltas_ibfk_1");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

using Vakcina.API.Models;

namespace Vakcina.API
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();

            // TODO: 02. A kapcsolati adatokat az appsettings.json fájlból olvassa be
            builder.Services.AddDbContext<VakcinaContext>();

            var app = builder.Build();

            // Configure the HTTP request pipeline.

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}
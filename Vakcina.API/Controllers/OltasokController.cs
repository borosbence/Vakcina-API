using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Vakcina.API.Models;

namespace Vakcina.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OltasokController : ControllerBase
    {
        private readonly VakcinaContext _context;

        public OltasokController(VakcinaContext context)
        {
            _context = context;
        }

        // GET: api/oltasok/2022-03-01
        [HttpGet]
        // TODO: 06. Útvonal szabály javítása
        [Route("datum")]
        public async Task<int> GetCount()
        {
            // TODO: 05. Oltások számának szűkítése megadott dátumra
            return await _context.Oltasok.CountAsync();
        }

        // GET: api/oltasok
        // TODO: 08. megfelelő attribútum pótlása
        // TODO: 07. láthatóság beállítása 
        // TODO: 09.b DTO osztály használata
        private async Task<IEnumerable<oltas>> GetOltasok()
        {
            // TODO: 09.a Eredmény átalakítása DTO osztállyá
            return await _context.Oltasok.ToListAsync();
        }

        // POST: api/oltasok
        [HttpPost]
        public async Task<IActionResult> PostOltas(oltas oltas)
        {
            // TODO: 10.a oltás meglétének ellenőrzése
            bool letezik = false;
            if (letezik)
            {

            }

            var vakcina = await _context.Vakcinak.FindAsync(oltas.vakcina_id);
            // TODO: 11.b Ha a vakcina mennyisége 0 vagy annál kisebb, akkor hibaüzenet

            // TODO: 12.a Vakcina mennyiségének csökkentése
            // vakcina.mennyiseg = ??
            _context.Entry(vakcina).State = EntityState.Modified;
            // 13.a oltás szám mennyiségének növelése
            // 13.b oltás dátumának frissítése
            await _context.AddAsync(oltas);
            await _context.SaveChangesAsync();

            return Ok(oltas);
        }

        // PUT: api/oltasok
        [HttpPut]
        public async Task<IActionResult> PutOltas(oltas oltas)
        {
            // TODO: 10.b
            bool letezik = false;
            if (letezik)
            {

            }

            // TODO: 11.a vakcina rekord kikeresése másik táblából,
            // Ezt az alsó sort ki kell kommentelni, és máshogy helyettesíteni
            vakcina vakcina = new vakcina();
            // 11.b:
            //if (vakcina.mennyiseg ??)
            //{
            //    return BadRequest("Elfogyott a választott vakcina.");
            //}
            // TODO: 12.b

            _context.Entry(vakcina).State = EntityState.Modified;

            // TODO: 13.a
            // TODO: 13.b

            _context.Entry(oltas).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            // TODO: 14. Státuszkód megváltoztatása
            return Ok();
        }
    }
}
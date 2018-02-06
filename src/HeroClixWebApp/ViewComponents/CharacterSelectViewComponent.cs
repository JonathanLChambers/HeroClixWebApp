using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using HeroClixWebApp.Models;
namespace HeroClixWebApp.ViewComponents
{
    public class CharacterSelectViewComponent : ViewComponent
    {
        private readonly COOLSTUFFContext _context;

        public CharacterSelectViewComponent(COOLSTUFFContext context)
        {
            _context = context;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
           // var items = await GetItemsAsync(maxPriority, isDone);
            return View(await _context.CharacterTable.ToListAsync());
        }

    }
}

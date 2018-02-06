using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HeroClixWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace HeroClixWebApp.ViewComponents
{
    public class DetailsViewComponent : ViewComponent
    {
        private readonly COOLSTUFFContext _context;

        public DetailsViewComponent(COOLSTUFFContext context)
        {
            _context = context;
        }
        public async Task<IViewComponentResult> InvokeAsync(int id)
        {
            var character = await _context.CharacterTable.SingleOrDefaultAsync(m => m.CharacterId == id);
            return View(character);
        }
    }
}

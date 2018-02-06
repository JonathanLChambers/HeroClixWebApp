using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using HeroClixWebApp.Controllers;
using HeroClixWebApp.Models;
namespace HeroClixWebApp.ViewComponents
{
    public class WheelPositionViewComponent : ViewComponent
    {
        private readonly COOLSTUFFContext _context;

        public WheelPositionViewComponent(COOLSTUFFContext context)
        {
            _context = context;
        }

        
        public async Task<IViewComponentResult> InvokeAsync(int id, int? ordinalPosition)
        {

            id = HomeController.Id;
            if (ordinalPosition == null)
            {
                ordinalPosition = 1;
            };
            //var character = await _context.WheelPositionsStats.SingleOrDefaultAsync(m => m.CharacterId == id);
            var items = GetItemsAsync(id, ordinalPosition);
            if (items == null)
            {
                HomeController.NoMoreClix = true;
            }
            return View(items);
        }

        private IEnumerable<WheelPositionsStats> GetItemsAsync(int id, int? ordinalPosition)
        {

            return WheelPositionsStats.GetWheelPositionsStatsByCharacterIdAndOrdinalPosition(id, ordinalPosition);
        }


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HeroClixWebApp.Controllers;
using Microsoft.EntityFrameworkCore;
using HeroClixWebApp.Models;
using Microsoft.AspNetCore.Mvc;

namespace HeroClixWebApp.ViewComponents
{
    public class CharacterSkillsViewComponent : ViewComponent
    {
        private readonly COOLSTUFFContext _context;
        public CharacterSkillsViewComponent(COOLSTUFFContext context)
        {
            _context = context;
        }
        public async Task<IViewComponentResult> InvokeAsync(int id, int? ordinalPosition)
        {

            id = HomeController.Id;
            //if (ordinalPosition == null)
            //{
            //    ordinalPosition = 1;
            //};
            
            var items = GetItemsAsync(id, ordinalPosition);
            //if (items == null)
            //{
            //    HomeController.NoMoreClix = true;
            //}
            return View(items);
        }

        private IEnumerable<WheelPositionsSkills.DescriptionName> GetItemsAsync(int id, int? ordinalPosition)
        {

            return WheelPositionsSkills.GetWheelPositionsSkillsByCharacterIdAndOrdinalPosition(id, ordinalPosition);
        }
    }
   
}

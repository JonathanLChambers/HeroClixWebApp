using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Threading.Tasks;
using HeroClixWebApp.Data;
using HeroClixWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.EntityFrameworkCore;

namespace HeroClixWebApp.Controllers
{
    public class HomeController : Controller
    {

        private readonly COOLSTUFFContext _context;

        public HomeController(COOLSTUFFContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            //var characterList = _context.CharacterTable.ToList();
            
            return View(await _context.CharacterTable.ToListAsync());
        }

        public async Task<IActionResult> Add(int id)
        {
            if (!ModelState.IsValid) return View();
            //_context.Add();
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        public static int Id { get; set; }
        public static bool NoMoreClix { get; set; }
        public async Task<IActionResult> Details(int id)
        {

            ViewBag.ordinalPosition = 1;
            ViewBag.id = id;
            Id = id;
            //if (id == null)
            //{
            //    return NotFound();
            //}

            var character = await _context.CharacterTable.SingleOrDefaultAsync(m => m.CharacterId == id);
            //if (character == null)
            //{
            //    return NotFound();
            //}
            //DetailsVC(id);
            ViewData["CharacterName"] = character.Name;
            return ViewComponent("Details", new { Id});
            //return View(character);
        }

        public IActionResult DetailsVC(int ordinalPosition)
        {
            return ViewComponent("WheelPosition", new {Id, ordinalPosition});
        }
        public IActionResult SkillsVC(int? ordinalPosition)
        {
            return ViewComponent("CharacterSkills", new { Id, ordinalPosition });
        }

        //public IActionResult SkillsVC()
        //{
        //    return ViewComponent("CharacterSkills", new {Id});
        //}

        //public void Index(int id)
        //{
        //    ViewData["CharacterName"] = _context.Query("")
        //}

        //public IActionResult Index()
        //{
        //    return View();
        //}

        public IActionResult About( int? id)
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        //public IActionResult Contact()
        //{
        //    ViewData["Message"] = "Your contact page.";

        //    return View();
        //}

        public IActionResult Error()
        {
            return View();
        }
    }
}

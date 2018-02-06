using System.Threading.Tasks;
using HeroClixWebApp.Data;
using Microsoft.AspNetCore.Mvc;
//using HeroClixWebApp.Models;
using Microsoft.EntityFrameworkCore;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace HeroClixWebApp.Controllers
{
    public class ModelsController : Controller
    { 

        private HeroClixWebAppContext _context;
        public ModelsController(HeroClixWebAppContext context)
        {
            _context = context;
        }




        // GET: /<controller>/

        
        
    }
}

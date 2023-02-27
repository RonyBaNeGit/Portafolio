﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Tareas.Models;

namespace Tareas.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TareaController : ControllerBase
    {
        private readonly Ereact01Context _dbcontext;

        public TareaController(Ereact01Context context)
        {
            _dbcontext = context;
        }


        [HttpGet]
        [Route("Lista")]
        public async Task<IActionResult> Lista()
        {
            List<Tarea> lista = _dbcontext.Tareas.OrderByDescending(t => t.Id).ThenBy(t=>t.FechaRegistro).ToList();

            return StatusCode(StatusCodes.Status200OK, lista);
        }

        [HttpPost]
        [Route("Guardar")]

        public async Task<IActionResult> Guardar([FromBody] Tarea request)
        {
            await _dbcontext.Tareas.AddAsync(request);
            await _dbcontext.SaveChangesAsync();
            return StatusCode(StatusCodes.Status200OK, "ok");
        }

        [HttpDelete]
        [Route("Cerrar/{id:int}")]

        public async Task<IActionResult> Cerrar(int id)
        {

            Tarea tarea = _dbcontext.Tareas.Find(id);

            _dbcontext.Tareas.Remove(tarea);
            await _dbcontext.SaveChangesAsync();
            return StatusCode(StatusCodes.Status200OK, "ok");
        }

    }
}

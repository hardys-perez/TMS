using Data.Models;
using Data.Repositories;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace TMS.Controllers
{

    [ApiController]
    [Route("[controller]")]
    public class TruckController : ControllerBase
    {
        private readonly ITruckRepository _truckRepository;

        public TruckController(ITruckRepository truckRepository)
        {
            _truckRepository = truckRepository;
        }

        [HttpGet]
        [Route("")]
        public Task<IEnumerable<Truck>> GetTrucksAsync(int enterpriseID)
        {
            return _truckRepository.GetTrucksByEnterpriseAsync(enterpriseID);
        }
    }
}

using Data.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Data.Repositories
{
    public interface ITruckRepository
    {
        Task<IEnumerable<Truck>> GetTrucksByEnterpriseAsync(int enterpriseID);
        Task<Truck> GetByIDAsync(int truckID);
        Task<bool> AddTruckAsync(Truck truck);
        Task<bool> AddDocumentAsync(TruckDocument document);
        Task<IEnumerable<TruckDocument>> GetDocumentsAsync(int truckID);
        Task<bool> RemoveDocument(int truckDocumentID);
        Task<bool> UpdateTruckAsync(Truck truck);
        Task<bool> DeleteTruckAsync(int truckID);
    }
}

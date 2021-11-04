using AutoMapper;
using Data.Connections;
using Data.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Data.Repositories
{
    public class TruckRepository : ITruckRepository
    {
        private readonly IDataConnection _connectionString;
        
        public TruckRepository(IDataConnection connectionString)
        {
            _connectionString = connectionString;
        }

        public Task<IEnumerable<TruckDocument>> GetDocumentsAsync(int truckID)
        {
            throw new NotImplementedException();
        }

        public Task<bool> AddDocumentAsync(TruckDocument document)
        {
            throw new NotImplementedException();
        }

        public Task<bool> AddTruckAsync(Truck truck)
        {
            throw new NotImplementedException();
        }

        public Task<bool> DeleteTruckAsync(int truckID)
        {
            throw new NotImplementedException();
        }

        public Task<Truck> GetByIDAsync(int truckID)
        {
            throw new NotImplementedException();
        }

        public async Task<IEnumerable<Truck>> GetTrucksByEnterpriseAsync(int enterpriseID)
        {
            //Read from DB
            using var connection = _connectionString.GetReadOnlyConnection();
            connection.Open();

            var state = connection.State;

            connection.Close();
            
            return await Task.FromResult(new[]
            {
                new Truck
                { 
                    TruckID = 1,
                    VIN = "1234567",
                    Year = 1999
                },
                new Truck
                {
                    TruckID = 2,
                    VIN = "98765432",
                    Year = 2021
                }
            });
        }

        public Task<bool> RemoveDocument(int truckDocumentID)
        {
            throw new NotImplementedException();
        }

        public Task<bool> UpdateTruckAsync(Truck truck)
        {
            throw new NotImplementedException();
        }
    }
}

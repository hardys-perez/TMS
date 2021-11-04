using Data.Connections;
using Data.Repositories;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Data
{
    public static class DataServiceCollectionExtensions
    {
        public static void AddDataServices(this IServiceCollection services)
        {
            services.AddScoped<ITruckRepository, TruckRepository>();

            services.AddScoped<IDataConnection, TMSDataConnection>(c =>
                {
                    var readOnly = Environment.GetEnvironmentVariable("TMSReadOnlyConnectionString");
                    var readWrite = Environment.GetEnvironmentVariable("TMSReadWriteConnectionString");

                    if (string.IsNullOrEmpty(readOnly))
                    {
                        throw new ArgumentNullException("ReadOnlyConnectionString is missing from Environment");
                    }

                    if (string.IsNullOrEmpty(readWrite))
                    {
                        throw new ArgumentNullException("ReadWriteConnectionString is missing from Environment");
                    }

                    return new TMSDataConnection(readOnly, readWrite);
                });
        }
    }
}

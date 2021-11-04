using System.Data;
using System.Data.SqlClient;

namespace Data.Connections
{
    public class TMSDataConnection : IDataConnection
    {
        private readonly string _readOnlyConnectionString;
        private readonly string _readWriteConnectionString;

        public TMSDataConnection(string readOnlyConnectionString, string readWriteConnectionString)
        {
            _readOnlyConnectionString = readOnlyConnectionString;
            _readWriteConnectionString = readWriteConnectionString;
        }

        public IDbConnection GetReadOnlyConnection()
        {
            return new SqlConnection(_readOnlyConnectionString);
        }

        public IDbConnection GetReadWriteConnection()
        {
            return new SqlConnection(_readWriteConnectionString);
        }
    }
}

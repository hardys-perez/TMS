using System.Data;

namespace Data.Connections
{
    public interface IDataConnection
    {
        IDbConnection GetReadOnlyConnection();
        IDbConnection GetReadWriteConnection();
    }
}

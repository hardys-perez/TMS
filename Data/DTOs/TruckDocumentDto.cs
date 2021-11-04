using System;

namespace Data.DTOs
{
    class TruckDocumentDto
    {
        public int TruckDocumentID { get; set; }
        public int TruckDocumentTypeID { get; set; }
        public int TruckID { get; set; }
        public DateTime Created { get; set; }
        public DateTime ExpiresAt { get; set; }
        public string Comment { get; set; }
    }
}

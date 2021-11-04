using System;

namespace Data.Models
{
    public class TruckDocument
    {
		public int TruckDocumentID { get; set; }
		public TruckDocumentType DocumentType { get; set; }
		public DateTime CreatedDate { get; set; }
		public DateTime ExpiresAt { get; set; }
		public string Comment { get; set; }
	}
}

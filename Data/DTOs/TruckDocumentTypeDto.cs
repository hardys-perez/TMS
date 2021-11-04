namespace Data.DTOs
{
    class TruckDocumentTypeDto
    {
        public int TruckDocumentTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool Expirable { get; set; }
    }
}

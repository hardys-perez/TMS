namespace Data.Models
{
    public class Enterprise
    {
        public int EnterpriseID { get; set; }
        public string Name { get; set; }
        public Address Address { get; set; }
        public User Owner { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    public class InterventionTypes
    {
        
        public int ID { get; set; }

        public string Name { get; set; }

        public int AmountOfHours { get; set; }

        public double CostOfMaterials { get; set; }
    }
}

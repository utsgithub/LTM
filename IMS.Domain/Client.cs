using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    class Client
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public Districts district { get; set; }
    }
}

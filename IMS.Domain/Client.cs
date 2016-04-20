using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    public class Client
    {
        private int id;

        private string name;

        private string description;

        private Districts district;

        public void setName(string name)
        {
            this.name = name;
        }

    }
}

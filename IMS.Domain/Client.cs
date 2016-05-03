using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    /// <summary>
    /// This is an object model class for the Client table
    /// with all the corresponding attributes as the class members
    /// </summary>
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

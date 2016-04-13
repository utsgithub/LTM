using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    public class Users
    {
        public int ID { get; set; }

        public string Username { get; set; }

        public string LoginName { get; set; }

        public string Password { get; set; }

        public Districts district { get; set; }

        public int MaxHours { get; set; }

        public double MaxCost { get; set; }

        public UserType type { get; set; }

    }
}

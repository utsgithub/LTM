using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace IMS.Domain
{
    public class CoreInfo
    {
        public int ID;
        public Client client;
        public Users user;
        public int requiredHour;
        public int requiredCost;
        public DateTime performedDate;
        public string state = "Proposed";

        public string getState()
        {
            return state;
        }
        public void setState(string state)
        {
            this.state = state;
        }

    }
}

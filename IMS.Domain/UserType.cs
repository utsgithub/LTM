using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    public class UserType
    {
        private int id;
        private string userType;

        public void setUserType(string userType)
        {
            this.userType = userType;
        }
        public void setId(int id)
        {
            this.id = id;
        }
    }
}

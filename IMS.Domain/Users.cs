using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain

{
    public class Users
    {
        private int ID;
        private string username;
        private string loginname;
        private string password;
        private Districts district;
        private int maxhours;
        private double maxcost;
        private UserType type;

        public Users()
        {
            district = new Districts();
        }
        

        public bool changePassword(string oldpassword, string password)
        {
            if (oldpassword.Equals(this.password))
            {
                setPassword(password);
                return true;
            }
            else
            {
                return false;
            }
        }

        public void setPassword(string password)
        {
            this.password = password;
        }
        public void setMaxhours(int maxhours)
        {
            this.maxhours = maxhours;
        }
    }
}

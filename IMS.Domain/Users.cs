using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain

{
    /// <summary>
    /// This is an object model class for the Users table
    /// with all the corresponding attributes as the class members
    /// </summary>
    public class Users
    {
        private int ID;
        private string username;
        private string loginname;
        private string password;
        private Districts district;
        private int maxhours;
        private double maxcost;

        public Users()
        {
            district = new Districts();
        }

        public bool validateLogin(string loginname, string password)
        {
            if (password.Equals(this.password) && loginname.Equals(this.loginname))
            {
                return true;
            }
            else
                return false;
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

        public void setLoginname(string loginname)
        {
            this.loginname = loginname;
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

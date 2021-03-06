﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace IMS.Domain
{
    /// <summary>
    /// This is an object model class for the Core Information table
    /// with all the corresponding attributes as the class members
    /// </summary>
    public class CoreInfo
    {
        private int id;
        private Client client;
        private Users user;
        private int requiredHour;
        private int requiredCost;
        private DateTime performedDate;
        private string state = "Proposed";

        public CoreInfo()
        {
            client = new Client();
            user = new Users();
        }
        public string getState()
        {
            return state;
        }
        public void setState(string state)
        {
            this.state = state;
        }
        public Users getUser()
        {
            return user;
        }
    }
}

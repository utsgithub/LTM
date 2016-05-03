using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IMS.DataLayer
{
    /// <summary>
    /// This is the DataOperator class which will be used by the various pages
    /// to interact with the Database
    /// </summary>
    public class DataOperator
    {
        /// <summary>
        /// A Database Context is created
        /// </summary>
        IMSDataContext dbcontext = new IMSDataContext();

        /// <summary>
        /// This method Updates a District and submits the changes to the database.
        /// </summary>
        /// <param name="id">ID of the District</param>
        /// <param name="val">District Name</param>
        public void UpdateDistrict(int id, string val)
        {
            user user = dbcontext.users.Where(x => x.ID == id).FirstOrDefault();
            if (user != null)
            {
                user.district_ID = int.Parse(val);
            }

            dbcontext.SubmitChanges();
        }

        /// <summary>
        /// Returns a list of Intervention Types
        /// </summary>
        /// <returns></returns>
        public List<DataLayer.interventionType> GetInterventionTypes()
        {
            return dbcontext.interventionTypes.ToList();
        }

        /// <summary>
        /// Returns a List of Districts
        /// </summary>
        /// <returns></returns>
        public List<DataLayer.district> GetDistrictList() {
            return dbcontext.districts.ToList();
        }

        //public void UpdateStatusApprove(int id)
        //{
        //    coreInfo coreinfo = dbcontext.coreInfos.Where(x => x.ID == id).FirstOrDefault();
        //    if (coreinfo != null)
        //    {
        //        coreinfo.status = "Approve";
        //    }
        //    dbcontext.SubmitChanges();
        //}

        /// <summary>
        /// This method will update the status of an intervention by specifying the core info
        /// ID and the status of that intervention.
        /// </summary>
        /// <param name="id">Core Info ID</param>
        /// <param name="setStatus">Status value</param>
        public void UpdatesStaus(int id, string setStatus)
        {
            coreInfo coreInfo = dbcontext.coreInfos.Where(x => x.ID == id).FirstOrDefault();
            if (coreInfo != null)
            {
                coreInfo.status = setStatus;
            }
            dbcontext.SubmitChanges();
        }

        /// <summary>
        /// This method will return a user based on the user id
        /// </summary>
        /// <param name="UID"></param>
        /// <returns></returns>
        public view_user GetUserByID(string UID)
        {
            view_user User = dbcontext.view_users.Where(x => x.AspNetUserID == UID).FirstOrDefault();
            return User;
        }

        /// <summary>
        /// Returns a client based on the ID
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public client GetClientByID(int ID)
        {
            client client = dbcontext.clients.Where(x => x.ID == ID).FirstOrDefault();
            return client;
        }

        /// <summary>
        /// Returns an intervention type based on ID
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public interventionType GetIntTypeByID(int ID) {
            interventionType intType = dbcontext.interventionTypes.Where(x => x.ID == ID).FirstOrDefault();
            return intType;
        }
        
        /// <summary>
        /// This method will create the core information record based on the specified data
        /// </summary>
        /// <param name="iType_id">Intervention Type ID</param>
        /// <param name="client_id">Client ID</param>
        /// <param name="labour">Labor Hours</param>
        /// <param name="cost">Cost of Intervention</param>
        /// <param name="user_id">User ID</param>
        /// <param name="iDate">Date</param>
        /// <param name="status">Status</param>
        /// <param name="comments">Comments</param>
        /// <param name="reamaining">Remaining Life</param>
        /// <param name="date_recent_visit">Date of Recent Visit</param>
        public void CreateCoreInfo(int iType_id, int client_id, int labour, int cost, int user_id, DateTime iDate, string status, string comments, int reamaining, DateTime date_recent_visit)
        {
            coreInfo coreInfo = new coreInfo();
            coreInfo.iType_id = iType_id;
            coreInfo.client_id = client_id;
            coreInfo.labour = labour;
            coreInfo.cost = cost;
            coreInfo.user_id = user_id;
            coreInfo.iDate = iDate;
            coreInfo.status = status;
            coreInfo.comments = comments;
            coreInfo.reamaining = reamaining;
            coreInfo.date_recent_visit = date_recent_visit;
            dbcontext.coreInfos.InsertOnSubmit(coreInfo);
            dbcontext.SubmitChanges();
        }

        /// <summary>
        /// This method will create a client based on the specified data
        /// </summary>
        /// <param name="Name">Name of Client</param>
        /// <param name="Des">Description</param>
        /// <param name="Did">District ID</param>
        public void CreateClient(string Name, string Des, int Did)
        {
            client client = new client();
            client.name = Name;
            client.descriptive = Des;
            client.district_id = Did;
            dbcontext.clients.InsertOnSubmit(client);
            dbcontext.SubmitChanges();
        }
    }
}
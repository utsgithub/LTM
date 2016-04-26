using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IMS.DataLayer
{
    public class DataOperator
    {
        IMSDataContext dbcontext = new IMSDataContext();

        public void UpdateDistinct(int id, string val)
        {
            user user = dbcontext.users.Where(x => x.ID == id).FirstOrDefault();
            if (user != null)
            {
                user.district_ID = int.Parse(val);
            }

            dbcontext.SubmitChanges();
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
        //public void UpdatesStaus(int id, string setStatus)
        //{
        //    coreInfo coreInfo = dbcontext.coreInfos.Where(x => x.ID == id).FirstOrDefault();
        //    if (coreInfo != null)
        //    {
        //        coreInfo.status = setStatus;
        //    }
        //    dbcontext.SubmitChanges();
        //}
        //public void CreateCoreInfo(int iType_id, int client_id, int labour, int cost, int user_id, DateTime iDate, string status, string comments, int reamaining, DateTime date_recent_visit)
        //{
        //    coreInfo coreInfo = new coreInfo();
        //    coreInfo.iType_id = iType_id;
        //    coreInfo.client_id = client_id;
        //    coreInfo.labour = labour;
        //    coreInfo.cost = cost;
        //    coreInfo.user_id = user_id;
        //    coreInfo.iDate = iDate;
        //    coreInfo.status = status;
        //    coreInfo.comments = comments;
        //    coreInfo.reamaining = reamaining;
        //    coreInfo.date_recent_visit = date_recent_visit;

            
        //    dbcontext.coreInfos.InsertOnSubmit(coreInfo);
        //    dbcontext.SubmitChanges();
        //}
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    public class Intervention
    {
        private CoreInfo coreInfo;
        private InterventionTypes interType;
        public Intervention()
        {
            coreInfo = new CoreInfo();
        }
        public String validate(string newStage)
        {

            if (coreInfo.getState() == "Cancelled" || coreInfo.getState() == "Completed")
            {
                return "Fail";
            }
            else if (coreInfo.getState() == "Approved")
            {
                if (newStage == "Proposed")
                {
                    return "Fail";
                }
                else
                {
                    return "Successful";
                }
            }
            else
            {
                if (newStage == "Completed")
                {
                    return "Fail";
                }
                else
                {
                    return "Successful";
                }

            }


        }
        public void stageTransition(string state)
        {
            coreInfo.setState(state);
        }
    }
}

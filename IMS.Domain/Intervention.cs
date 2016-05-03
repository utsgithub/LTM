using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain
{
    /// <summary>
    /// This is an object model class for the Intervention table (not used anymore)
    /// with all the corresponding attributes as the class members
    /// </summary>
    public class Intervention
    {
        private CoreInfo coreInfo;
        private InterventionTypes interType;
        public Intervention()
        {
            coreInfo = new CoreInfo();
            interType = new InterventionTypes();
        }
        public bool validate(string newStage)
        {

            if (coreInfo.getState() == "Cancelled" || coreInfo.getState() == "Completed")
            {
                return false;
            }
            else if (coreInfo.getState() == "Approved")
            {
                if (newStage == "Proposed")
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            else
            {
                if (newStage == "Completed")
                {
                    return false;
                }
                else
                {
                    return true;
                }

            }


        }
        public void stageTransition(string state)
        {
            coreInfo.setState(state);
        }
    }
}

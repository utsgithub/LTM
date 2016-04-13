using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using IMS.Domain;

namespace IMS.Tests
{
    [TestClass]
    public class UnitTests
    {

        private Intervention inter;
        [TestInitialize]
        public void Setup()
        {
            inter = new Intervention();
        }
        [TestMethod]
        public void validateProposed_to_Approved()
        {
            Assert.AreEqual("Successful", inter.validate("Approved"));
        }
        [TestMethod]
        public void validateProposed_to_Completed()
        {
            Assert.AreEqual("Fail", inter.validate("Completed"));
        }
        [TestMethod]
        public void validateApproved_to_Cancelled()
        {
            inter.stageTransition("Approved");
            Assert.AreEqual("Successful", inter.validate("Cancelled"));
        }
        [TestMethod]
        public void validateApproved_to_Completed()
        {
            inter.stageTransition("Approved");
            Assert.AreEqual("Successful", inter.validate("Completed"));
        }
        [TestMethod]
        public void validateCancelled_to_Approved()
        {
            inter.stageTransition("Cancelled");
            Assert.AreEqual("Fail", inter.validate("Approved"));
        }
    }

}

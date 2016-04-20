using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using IMS.Domain;

namespace IMS.Tests
{
    [TestClass]
    public class UnitTests
    {

        private Intervention inter;
        private Users user;

        [TestInitialize]
        public void Setup()
        {
            inter = new Intervention();
            user = new Users();
        }

        // test state change and its validation.
        [TestMethod]
        public void validateProposed_to_Approved()
        {
            Assert.AreEqual(true, inter.validate("Approved"));
        }
        [TestMethod]
        public void validateProposed_to_Completed()
        {
            Assert.AreEqual(false, inter.validate("Completed"));
        }
        [TestMethod]
        public void validateApproved_to_Cancelled()
        {
            inter.stageTransition("Approved");
            Assert.AreEqual(true, inter.validate("Cancelled"));
        }
        [TestMethod]
        public void validateApproved_to_Completed()
        {
            inter.stageTransition("Approved");
            Assert.AreEqual(true, inter.validate("Completed"));
        }
        [TestMethod]
        public void validateCancelled_to_Approved()
        {
            inter.stageTransition("Cancelled");
            Assert.AreEqual(false, inter.validate("Approved"));
        }

        //Test password change and apporved.
        [TestMethod]
        public void changePassword_with_Valid_OldPassword()
        {
            user.setPassword("123456");
            Assert.AreEqual(true, user.changePassword("123456", "654321"));
            
        }

        [TestMethod]
        public void changePassword_with_InValid_OldPassword()
        {
            user.setPassword("123456");
            Assert.AreEqual(false, user.changePassword("12346", "654321"));
        }
    }

}

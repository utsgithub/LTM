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
            user.setPassword("123456");
            user.setLoginname("user1");
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
            
            Assert.AreEqual(true, user.changePassword("123456", "654321"));
            
        }

        [TestMethod]
        public void changePassword_with_InValid_OldPassword()
        {
            Assert.AreEqual(false, user.changePassword("12346", "654321"));
        }

        //Test authorise login details.
        [TestMethod]
        public void validate_Login_with_ValidDetails()
        {
            Assert.AreEqual(true, user.validateLogin("user1", "123456"));
        }

        [TestMethod]
        public void validate_Login_with_Invalid_Loginname()
        {
            Assert.AreEqual(false, user.validateLogin("user", "123456"));
        }

        [TestMethod]
        public void validate_Login_with_Invalid_Password()
        {
            Assert.AreEqual(false, user.validateLogin("user1", "12345"));
        }
    }
}
